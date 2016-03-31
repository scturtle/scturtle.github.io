---
title: Turtleblog — 一个 python 静态博客生成器
tags: python
---

Wordpress 已经 out 了，现在流行什么？静态博客。   
Turtleblog 便是一个自用的静态博客生成器。基本上是模仿 [Armin Ronacher](http://lucumr.pocoo.org) 博客的样式。

+ 单 python 脚本，200 行。再加一个基于 bottle 的十几行的用于本地测试的服务器脚本。
+ 实现基于 markdown 的博客，支持图片，代码，Tex 公式。
+ 实现文章标签和 RSS 输出。
+ 使用 Python-markdown 和 Pygments 进行基本渲染。
+ 使用 Jinja2 模板引擎。
+ 使用 Disqus 作为评论服务。
+ 使用 Json 文件保存配置。
+ 可以方便的搭建在 Github Pages 上。

<del>
demo：[scturtle.github.com](http://scturtle.github.com)
（RSS暂时停止，确定没有什么 Bug 了再开）
</del>
