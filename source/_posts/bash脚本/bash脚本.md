---
title: Bash脚本
date: 2022-08-29 14:03:12
tags: [Bash]
toc: true
---

Bash脚本是个人使用较多的脚本语言，记录下常见的需求以及解决方案。

### [Mac OS X: 音量控制等 - CSDN博客](https://www.google.com.hk/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwjnzurHr-v5AhVK4GEKHf3pAVwQFnoECBcQAQ&url=https%3A%2F%2Fblog.csdn.net%2Fcneducation%2Farticle%2Fdetails%2F3899819&usg=AOvVaw2XzcrRS1CIM6CQZy7QUMJw)



## 根据关键词kill掉进程

```bash
#!/bin/bash
# ~/.my_batch_sh/others/kill_app_with_keyword.sh
# kill app with name

app=$1

get_app_full_path_with_keyWord(){
	app=$1

	echo $(ps -ef|grep $app|grep /Application|awk '{print $8}')
	# echo $(ps -ef|grep Android|grep /Application|awk '{print $2}')
}

kill_app_with_keyword(){
	app=$1
	ps -ef|grep $app|grep /Application|awk '{print $2}'|xargs kill -9
	# ps -ef|grep Android|grep /Application|awk '{print $2}'|xargs kill -9
}

echo "killing $(get_app_full_path_with_keyWord $app)..."
kill_app_with_keyword $app
echo "job done!"
```

然后可以这样调用：

```bash
#!/bin/bash

killer=~/.my_batch_sh/others/kill_app_with_keyword.sh
app_keywords=(Android Xcode Typora Safari Chrome Music Termin Sub)
# Termin

for app in ${app_keywords[@]}
do
  $killer $app
done

```

