---
title: Compile a better GVim for Windows
tags: other
---

GVim in the default distribution is ugly on Windows. 
It's not hard to build a better one.

*1.* Get the source of Vim:
```
> hg clone https://vim.googlecode.com/hg/ vim
```

*2.* To get better font renderer, comment out these lines in `src/gui_w32.c`:
```diff
......
    /* On NT, tell the font renderer not to "help" us with Hebrew and Arabic
     * text.  This doesn't work in 9x, so we have to deal with it manually on
     * those systems. */
+   /*
    if (os_version.dwPlatformId == VER_PLATFORM_WIN32_NT)
        foptions |= ETO_IGNORELANGUAGE;
+   */
......
```

*3.* To support non-monospace fonts, comment out these lines in `src/os_mswin.c`:
```diff
......
 #ifndef FEAT_PROPORTIONAL_FONTS
    /* Ignore non-monospace fonts without further ado */
+   /*
    if ((ntm->tmPitchAndFamily & 1) != 0)
        return 1;
+   */
 #endif
......
```

*4.* Get this [compile.bat](http://tuxproject.de/projects/vim/_compile.bat.php), 
and modify compilation flags as follows(assuming you have Virsual Studio):
```
......
nmake -f Make_mvc.mak GUI=yes OLE=yes IME=yes GIME=yes DYNAMIC_IME=yes GDYNAMIC_IME=yes CSCOPE=yes MULTI_BYTE=yes MULTI_BYTE_IME=yes FEATURES=HUGE PYTHON=c:\Python27 DYNAMIC_PYTHON=yes PYTHON_VER=27
......
```

*5.* Run it at the `vim` folder, 
and you will get a new distribution of vim at `src\templateoutput`.
Move it to a suitable place, and run `install.exe` in it to do further configuration.
Done!
