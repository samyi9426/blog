---
title: Hexo建站Q&A
date: 2022-07-23 14:45:18
tags:
toc: true
---

[toc]

### [Hexo官方介绍](https://hexo.io/zh-cn/)

### [Hexo建站基础篇](http://hanyu.fit/2021/06/17/记%20---%20关于近段时间学习的总结(Hexo建站%20--%20基础篇-搭建环境)/)

###  [添加文章目录](https://xyzardq.github.io/2016/11/04/Hexo添加文章目录/)

### [更换主题](https://zhuanlan.zhihu.com/p/137338730) 


### [新增RSS订阅](https://www.google.com.hk/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwioobuwtOH5AhXnt1YBHThrBVkQFnoECAYQAw&url=https%3A%2F%2Fzhuanlan.zhihu.com%2Fp%2F392900543&usg=AOvVaw2yK-opF-gOHYXKevVeXYPH) 

该博主hexo相关文章（建站、使用）[hexo相关](https://www.zhihu.com/column/c_1402548025064128512).   


### [设置定时任务](https://tooltt.com/crontab/c/118.html)

需求：

1. 每天晚上8点定时备份blog
2. 每隔10天定时发布（更新）blog，并备份blog

>
>```bash
>#for test
>50 15 * * * bash $HOME/blog/.scripts/deploy_and_backup_blog.sh>>$HOME/blog/deployment.log
>#release 
>00 20 */10 * * bash $HOME/blog/.scripts/deploy_and_backup_blog.sh>>$HOME/blog/deployment.log
>
>```
>



### 便捷脚本、别名

#### 1.终端命令创建一个新的markdown文件，并使用Typora打开它。

>  ```bash
>  #!/bin/bash
>  post_name="$1"
>  cd ~/blog
>  hexo new $post_name
>  echo ~/blog/source/_posts/$post_name
>  /Applications/Typora.app/Contents/MacOS/Typora ~/blog/source/_posts/$post_name.md &
>  ```

#### 2.创建别名，便捷调用命令

> ```bash
> alias hexonew='$HOME/blog/.sripts/blog_new.sh'
> alias hexog='cd $HOME/blog/;hexo g'
> alias hexod='cd $HOME/blog/;hexo d'
> alias hexodd='hexog;hexod'
> alias hexos='cd $HOME/blog/;hexo s'
> ```



