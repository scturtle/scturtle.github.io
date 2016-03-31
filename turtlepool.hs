--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
import           Data.Monoid ((<>))
import qualified Data.Set as S
import           Text.Printf
import           Text.Pandoc
import           Hakyll
--------------------------------------------------------------------------------

main :: IO ()
main = hakyll $ do
    match "images/*" $ do
        route   idRoute
        compile copyFileCompiler

    match "asserts/*" $ do
        route   idRoute
        compile copyFileCompiler

    match (fromList [".nojekyll", "404.html", "CNAME"]) $ do
        route   idRoute
        compile copyFileCompiler

    match "about.markdown" $ do
        route   $ setExtension "html"
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/default.html" defaultContext
            >>= relativizeUrls

    tags <- buildTags "posts/*" (fromCapture "tags/*.html")
    let postCtx =
          dateField "date" "%B %e, %Y" <>
          tagsField "tags" tags <>
          defaultContext

    create ["tags.html"] $ do
        route idRoute
        compile $ do
          cloud <- renderTagCloud 100 150 tags
          let cloudDiv = "<div class=\"tagcloud\">\n" ++ cloud ++ "\n</div>"
              tagCloudCtx = constField "title" "Tags" <>
                            constField "body" cloudDiv <>
                            defaultContext
          makeItem ""
            >>= loadAndApplyTemplate "templates/default.html" tagCloudCtx
            >>= relativizeUrls

    match "posts/*.markdown" $ do
        route $ setExtension "html"
        compile $
          customPandocCompiler
            >>= saveSnapshot "content"
            >>= loadAndApplyTemplate "templates/post.html" postCtx
            >>= loadAndApplyTemplate "templates/default.html" postCtx
            >>= relativizeUrls

    match "posts/*.html" $ do
        route idRoute
        compile $
          getResourceBody
            >>= saveSnapshot "content"
            >>= loadAndApplyTemplate "templates/post.html" postCtx
            >>= loadAndApplyTemplate "templates/default.html" postCtx
            >>= relativizeUrls

    tagsRules tags $ \tag pat -> do
        route idRoute
        compile $ do
          posts <- recentFirst =<< loadAllSnapshots pat "content"
          let title = "Posts tagged “" ++ tag ++ "”"
              tagCtx = constField "title" title <>
                    listField "posts" postCtx (return posts) <>
                    defaultContext
          makeItem ""
            >>= loadAndApplyTemplate "templates/post-list.html" tagCtx
            >>= loadAndApplyTemplate "templates/default.html" tagCtx
            >>= relativizeUrls

    create ["archive.html"] $ do
        route idRoute
        compile $ do
          posts <- recentFirst =<< loadAll "posts/*"
          let archiveCtx =
                  listField "posts" postCtx (return posts) <>
                  constField "title" "Archives" <>
                  defaultContext

          makeItem ""
            >>= loadAndApplyTemplate "templates/post-list.html" archiveCtx
            >>= loadAndApplyTemplate "templates/default.html" archiveCtx
            >>= relativizeUrls

    match "index.html" $ do
        route idRoute
        compile $ do
          posts <- (take 8 <$>) . recentFirst =<< loadAll "posts/*"
          let indexCtx =
                  listField "posts" postCtx (return posts) <>
                  constField "notitle" "" <>
                  defaultContext

          getResourceBody
            >>= applyAsTemplate indexCtx
            >>= loadAndApplyTemplate "templates/default.html" indexCtx
            >>= relativizeUrls

    match "templates/*" $ compile templateCompiler

    create ["atom.xml"] $ do
      route idRoute
      compile $ do
        let feedCtx = postCtx <> bodyField "description"
        posts <- (take 10 <$>) . recentFirst =<< loadAllSnapshots "posts/*" "content"
        renderAtom feedConf feedCtx posts

--------------------------------------------------------------------------------

feedConf :: FeedConfiguration
feedConf = FeedConfiguration
    { feedTitle       = "ScTurtle's Pool"
    , feedDescription = "scturtle's blog"
    , feedAuthorName  = "scturtle"
    , feedAuthorEmail = "scturtle@gmail.com"
    , feedRoot        = "https://scturtle.me"
    }

customPandocCompiler :: Compiler (Item String)
customPandocCompiler =
  let extraExtensions =
        [ Ext_east_asian_line_breaks
        , Ext_tex_math_double_backslash
        ]
      customExtensions = foldr S.insert pandocExtensions extraExtensions
      writerOptions = defaultHakyllWriterOptions {
          writerExtensions = customExtensions
        , writerHighlight = True
        , writerHTMLMathMethod = MathJax ""
        }
  in  pandocCompilerWithTransform defaultHakyllReaderOptions
                                  writerOptions
                                  highlightjs

highlightjs :: Pandoc -> Pandoc
highlightjs (Pandoc meta bs) = Pandoc meta $ map highlight bs
  where
    highlight (CodeBlock (_, options, _) code) =
      let compiled = ["cpp", "python", "haskell", "diff"]
          lang = case options of
                   (lang0:_) | lang0 `elem` compiled -> lang0
                   _ -> "nohighlight"
          temp = "<div class =\"highlight\"><pre><code class=\"%s\">%s</code></pre></div>"
      in  RawBlock "html" $ printf temp lang code
    highlight x = x
