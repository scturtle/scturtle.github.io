---
title: Turtleblog 的配置
tags: python
---

这个东西主要是自用和抛砖引玉而已。[rstblog](https://github.com/mitsuhiko/rstblog/)、[hyde](http://ringce.com/hyde) 这些项目更值得推荐。

<del>运行于 python 2.7 环境，</del>依赖于 python-markdown、pygments、jinja2、bottle 这几个项目，可 `pip install` 安装。

`git clone` 一下 turtleblog 的[源码](https://github.com/scturtle/turtleblog.git)。修改配置文件 config.json：

    {
        "site name": "ScTurtle's Pool", //博客名会显示在左上角
        "site url": "http://scturtle.github.com", //博客网址
        "author": "scturtle",
        "number of blogs per page": 10,
        "markdown config":"extra codehilite",//配置 markdown 扩展
        "disqus shortname":"scturtlespool"
    }

"disqus shortname" 这一项请先注册 disqus 的服务，然后在其提供的安装代码中寻找。

每一篇文章是 blog 目录下的一个文件夹（可以任意递归），例如建立 *2012/7/15/test/* 文件夹，那么这篇文章的 url 就是这个。文件夹下需要有 blog.md、config.json 两个文件。还可以有 img 文件夹专放图片。blog.md 中写主要文章内容，config.json 中配置：

    {
        "title":"文章标题",
        "tags":"标签，以空格分隔",
        "date":"2012-7-15 10:00",
        "enable mathjax":true //是否启用 mathjax，如果文中有 Tex 公式
    }

如果需要 project、about 等独立页面，那么在 page 下建立一个包含 page.md、config.json 的文件夹，页面 url 为文件夹名称。config.json 中配置 "title"（显示在浏览器标签栏的名字）。

static 下的样式表 pygments.css 配置代码高亮的配色，style.css 为整个站点的配置，可修改整站主题。

修改 template 下的模板文件最好有一些 jinja2 的基础。一般只需要动一下 base.html 这个主要框架，比如加入独立页面的链接，修改页底的联系方式或加上 Google Analytics 的统计代码。

最后运行一下 turtle.py 这个脚本就会在 html 文件夹下生成好静态的文件了。运行 server.py 这个脚本可以在本地预览。在 github 建立一个 yourname.github.com 项目然后将 html 文件夹的内容提交到 master 分支即可。

<del>写 markdown 时，我是用的自己的 markdown 编辑器 [turtlenote](http://scturtle.me/turtlenote/)。</del>
