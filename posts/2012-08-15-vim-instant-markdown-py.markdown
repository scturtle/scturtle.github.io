---
title: vim-instant-markdown-py - vim 的 markdown 插件
tags: vim, python
---

偶然看到了 [vim-instant-markdown](https://github.com/suan/vim-instant-markdown) 这个 vim 插件，
能一边在 vim 里编辑 markdown 一边在网页上实时渲染，碉堡了。
可是插件的各种依赖实在让人无奈，通过 ruby 调用 python 的 pygments，
又用 node.js 来处理 markdown 和 websocket，node.js 安装起来挺费劲，
而且使用管道不支持 windows。于是山寨了一个 python 版出来。

依赖：vim 需要有 python 支持，要有 python 库 bottle，markdown 和 pygment。

安装：`vim-instant-markdown-py.vim` 放到 `~/.vim/plugin` 下，
其他三个文件找个方便的地方放就好了。

运行：运行 `mdd.py`，（如果没有自动的话）打开 `index.html`，
显示 `connected` 就可以打开 vim 编辑 markdown 文件了。

演示:   
<div style="text-align:center;">
<video src="/images/markdown.webm" controls>
</video>
</div>

项目地址：[github.com/scturtle/vim-instant-markdown-py](http://github.com/scturtle/vim-instant-markdown-py)。源码中借鉴来的地方有注明。
