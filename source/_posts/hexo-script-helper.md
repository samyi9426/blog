---
title: hexo-script-helper
date: 2022-08-25 10:53:34
tags:
---

## 脚本目的

### 1.终端命令创建一个新的markdown文件，并使用Typora打开它。

>  ```bash
>  #!/bin/bash
>  post_name="$1"
>  cd ~/blog
>  hexo new $post_name
>  echo ~/blog/source/_posts/$post_name
>  /Applications/Typora.app/Contents/MacOS/Typora ~/blog/source/_posts/$post_name.md &
>  ```

### 2.创建别名，便捷调用命令

> ```bash
> alias hexonew='$HOME/blog/.sripts/blog_new.sh'
> alias hexog='cd $HOME/blog/;hexo g'
> alias hexod='cd $HOME/blog/;hexo d'
> alias hexodd='hexog;hexod'
> alias hexos='cd $HOME/blog/;hexo s'
> ```
