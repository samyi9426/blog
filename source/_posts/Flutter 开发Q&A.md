---
title: Flutter 开发Q&A
date: 2022-08-25 13:52:03
tags:
toc: true
---

### Everything is a Widget 

一切皆组件



### WebView与原生Flutter的交互



### Flutter转场卡顿

1. 转场动画加上页面初始化/销毁中较复杂的操作（一般涉及到IO或者比较消耗CPU的计算），可能会引起页面卡顿。

   解决方案

   > 1. 退出页面卡顿：找出导致卡顿的代码，并做异步线程调用或者延迟调用，或者调用后，延迟退出页面。
   > 2. 进入页面卡顿：找出导致卡顿的代码，并做异步线程调用或者延迟调用，相关数据等待可以加loading。

2. 动画卡顿
   1. 当前机器发热严重，CPU/GPU处于降频期间。



### Flutter 切圆角 ClipRRect

```
ClipRRect
```



### Could not run build/ios/iphoneos/Runner.app, Try launching Xcode and selecting "Product > Run" to fix the problem #107760

https://github.com/flutter/flutter/issues/107760

https://juejin.cn/post/7104133574739099684

最后，完全执行（多个目录下）Flutter clean后，重新run起来了。



### Xcode打包生成ipa四个选项的具体区别

https://www.jianshu.com/p/94e581861707
