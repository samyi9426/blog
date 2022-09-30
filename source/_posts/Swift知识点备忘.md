---
title: Swift知识点备忘
tags:
  - Swift
toc: true
date: 2022-09-29 10:20:33
---

## 语法相关

### 类

### 函数

#### 命名参数、命名可选参数、默认参数。

命名参数

```swift
func functionNameA(lableA a:String, labelB b String) -> Type {}
```



## 数据转化

一般来说，就是JSON字符串转为我们自定义的类。过程大概是：

> **JSON字符串-》字典（或数组）-〉转为自定义对象（自定义对象数组）**

JSON转为字典，iOS Swift 中使用 JSONSerialization.jsonObject(with: data, ...) 传入字符串的Data格式数据即可。

### JSON结构类型只有两种：对象结构和数组结构 

JSON定义:https://www.json.org/json-zh.html 

对象结构:

```swift
{
  "name": "zhongxm",
  "age": 30,
  "sex": 1
}
```

数组结构:

```swift
[
  {
    "name": "zhongxm",
    "age": 30,
    "sex": 1
  },
  {
    "name": "zhongyi",
    "age": 5,
    "sex": 1
  },
  {
    "name": "lxy",
    "age": 30,
    "sex": 1
  }
]
```

然后就是字典转Model，第三方：阿里HandyJSON

原生写法：Model 实现Codable协议，字典转JSON Data，JSONDecoder把 JSON Data转为指定的model类（会用到Codable协议实现）

```swift
struct MyPerson : Codable {
    let name:String
    let age:Int
}

func DictToModel(dict:[String:Any]?) -> Any? {
    let dic = ["name":"zhongxm", "age":31] as [String : Any]
    do {
        let json = try JSONSerialization.data(withJSONObject: dic)
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let model = try decoder.decode(MyPerson.self, from: json)
        return model
    } catch let error {
        print(error.localizedDescription)
    }
    
    return nil
}
```



## 第三方 阿里HandyJSON
