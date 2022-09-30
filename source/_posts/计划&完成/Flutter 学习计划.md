---
title: Flutter 学习计划
date: 2022-08-25 17:05:16
tags: [Flutter,计划&完成]
toc: true
---



## [一起来玩Flutter —— 完整学习路线解读 - 掘金](https://www.google.com.hk/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwjTi-qD0uH5AhWemFYBHcpkBCsQFnoECAwQAQ&url=https%3A%2F%2Fjuejin.cn%2Fpost%2F7022246208097746958&usg=AOvVaw2TsnAL-f42O2cwA7wFj61L)

## Flutter 原理解析



## Flutter 官方链接

### Flutter 开发文档 https://flutter.cn/docs

- [Flutter Widget 目录](https://flutter.cn/docs/reference/widgets)
- [Flutter API 文档open_in_new](https://api.flutter-io.cn/)
- [flutter 命令行文档](https://flutter.cn/docs/reference/flutter-cli) 
- [Package 网站 ](https://pub.flutter-io.cn/flutter)



### Flutter 官方Q&A  https://flutter.cn/docs/resources/faq

### [10分钟了解Flutter跨平台运行原理！ - 腾讯云开发者社区](https://www.google.com.hk/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwiphvit-5P6AhVHz2EKHTvIAJ4QFnoECAoQAQ&url=https%3A%2F%2Fcloud.tencent.com%2Fdeveloper%2Farticle%2F1883377&usg=AOvVaw1Liiu2BOUp7O9skaCpWdHS)



### [Flutter原理与实践](https://tech.meituan.com/2018/08/09/waimai-flutter-practice.html)



## Android Studios Flutter项目高效配置

### 你如何处理 Flutter 代码中的缩进和结构？

Android Studio 提供了工具来简化 Flutter 代码的结构化。主要的两点是：

1. **Alt + Enter/ Command + Enter**：这使您可以轻松地包装和删除小部件以及在复杂的层次结构中交换小部件。要使用它，只需将光标指向小部件声明并按下按键即可提供一些选项。这有时感觉像是天赐之物。
2. **DartFMT**：dartfmt 格式化您的代码以保持干净的层次结构和缩进。在您不小心移动了几个括号后，它会使您的代码更漂亮。

链接：https://juejin.cn/post/6998684967668547620
来源：稀土掘金

### [Dart 点将台| package 包相关知识 - 掘金](https://www.google.com.hk/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwjT-5HMzev5AhW8plYBHaZyARYQFnoECAUQAQ&url=https%3A%2F%2Fjuejin.cn%2Fpost%2F6932640833929740296&usg=AOvVaw2Qlt7bV3uH2fPWnEz29qoG)

## Dart 语言



[每个Flutter 开发人员都应该知道的16 个Dart 技巧和窍门](https://www.google.com.hk/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwjoxejH0-v5AhUjUfUHHR8YCxkQFnoECAYQAQ&url=https%3A%2F%2Fblog.51cto.com%2Fjianguo%2F4334685&usg=AOvVaw0PbGZsiw01Kqy1yWdd0hlP)

### [Dart开发的7个技巧](https://juejin.cn/post/6999040234335764517)

#### 需要同时执行多个Future吗？使用 Future.wait。

#### 需要调用回调但前提是它不为空？使用“?.call()”语法。

#### 需要以空安全的方式遍历map吗？使用`.entries`

```dart
for (var entry in timeSpent.entries) {
  // do something with keys and values
  print('${entry.key}: ${entry.value}');
}
```



### [flutter开发常见的问题](https://juejin.cn/post/6998684967668547620) 

##### 对未使用的函数参数使用下划线

```dart
ListView.builder(
  itemBuilder: (_, __) => ListTile(
    title: Text('all the same'),
  ),
  itemCount: 10,
)	
```

*注意：这两个参数是不同的 (`_`和`__`)，因为它们是**单独的标识符**。*

#### 需要一个只能实例化一次的类（又名单例）？使用带有私有构造函数的静态实例变量。

```dart
// file_system.dart
class FileSystem {
  FileSystem._();
  static final instance = FileSystem._();
}	
```

要在 Dart 中创建单例，您可以声明一个命名构造函数并使用`_`语法将其设为私有。

然后，您可以使用它来创建类的一个静态最终实例。

因此，其他文件中的任何代码都只能通过`instance`变量访问此类：

```dart
// some_other_file.dart
final fs = FileSystem.instance;
// do something with fs	
```



#### [同步和异步生成器](https://juejin.cn/post/6999408113942003726#heading-0)



### [Flutter开发中的一些小技巧整理 - 知乎专栏](https://www.google.com.hk/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwjoxejH0-v5AhUjUfUHHR8YCxkQFnoECAQQAQ&url=https%3A%2F%2Fzhuanlan.zhihu.com%2Fp%2F357234531&usg=AOvVaw2yo9n0F9sIKaTyhkdDRPw3)

#### ?? 等符号妙用

如果我们需要从一个对象取数据渲染，假如数据为`null`，那么就会报错一般的方法是判断

```java
data.str == null ? "" : data.str
```

但是在用了 dart 语法后，再这么写显得很low，并且也不够美观，dart 提供了 ?? 方法，其结果和上面的一样

```java
data.str ?? ""
```

还有一个是`?.`它的意思是如果`data`为 null 就返回 null，不为 null 返回`data.str`结果

假如有多级对象嵌套，如果不做判空处理那么 组件会报错，一般是在进行网络请求后渲染数据，但是在更新数据前我们不想去做 loading 处理

```java
Text(data?.info?.name ?? "");
//相当于
Text(data != null && data.info != null && data.info.name != null
                                ? data.info.name
                                : ""),
```

这样写是不是代码简洁了很多？

## Flutter Widgets

## 状态管理

## 网络请求

## 页面导航

## 数据存储

## 动画

## 响应式编程





# 
