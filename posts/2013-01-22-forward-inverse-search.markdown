---
title: Configure forward/inverse search with Vim-LaTeX and SamutraPDF
tags: other
---

Get the newest version of [Vim-LaTeX](http://vim-latex.svn.sourceforge.net/viewvc/vim-latex/trunk/vimfiles/).
There is a `Download GNU tarball` link at the bottom.
(I use [vundle](https://github.com/gmarik/vundle) to install a old version 
and replace it with the newest.)

Get the newest version of [SumatraPDF](https://sites.google.com/site/xhmikosr/progs/officetools). Add the directory paths  of SumatraPDF and gvim into the system path variable.

Download [dde.exe](https://dl.dropboxusercontent.com/u/1551217/share/dde.exe). Put it in `ftplugin\latex-suite\`.

Modify `ftplugin\latex-suite\compiler.vim` with the following patch:

```diff
:::diff
--- compiler.vim.orig	Sat Oct 30 00:55:22 2010
+++ compiler.vim	Tue Jan 22 18:21:10 2013
@@ -321,6 +321,7 @@
 "           gvim --servername LATEX --remote-silent +%l "%f"
 "      For inverse search, if you are reading this, then just pressing \ls
 "      will work.
+let s:path = expand('<sfile>:p:h')
 function! Tex_ForwardSearchLaTeX()
 	if &ft != 'tex'
 		echo "calling Tex_ForwardSeachLaTeX from a non-tex file"
@@ -343,10 +344,20 @@
 	
 	" inverse search tips taken from Dimitri Antoniou's tip and Benji Fisher's
 	" tips on vim.sf.net (vim.sf.net tip #225)
-	if (has('win32') && (viewer == "yap" || viewer == "YAP" || viewer == "Yap"))
+	if (has('win32') && (viewer == "yap" || viewer == "YAP" || viewer == "Yap" || viewer =~? "^sumatrapdf"))
 
-		let execString = 'silent! !start '. viewer.' -s '.line('.').expand('%').' '.mainfnameRoot
+		if (viewer == "yap" || viewer == "YAP" || viewer == "Yap")
 
+			let execString = 'silent! !start '. viewer.' -s '.line('.').expand('%').' '.mainfnameRoot
+
+		elseif viewer =~? "^sumatrapdf"
+			
+			" SumatraPDF forward search
+			let relativeFile=substitute(expand("%:p"), "\\/", '\',"g")
+			let pdfname=substitute(mainfnameFull.'.'.s:target, "\\/", '\',"g")
+			let execString = 'silent! !start "'.s:path.'/dde.exe" SUMATRA SUMATRA control "[ForwardSearch("'.pdfname.'","'.relativeFile.'",'.line('.').',0,0,0)]" true'
+
+		endif
 
 	elseif (has('macunix') && (viewer == "Skim" || viewer == "PDFView" || viewer == "TeXniscope"))
 		" We're on a Mac using a traditional Mac viewer
```

Add following configurations into `_vimrc`:

```vim
filetype plugin on
"set shellslash  " conflict with vundle
set grepprg=grep\ -nH\ $*
filetype indent on
let g:Tex_Leader=','  " I use this
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_ViewRule_pdf = 'SumatraPDF -reuse-instance -inverse-search "gvim -c \":RemoteOpen +\%l \%f\""'
let g:Tex_CompileRule_pdf = 'pdflatex -synctex=-1 -src-specials -interaction=nonstopmode $*'
```

Then, `,ll` to compile, `,ls` to forward search and double click in SumatraPDF to inverse search.
