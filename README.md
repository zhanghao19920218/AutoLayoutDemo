# Auto Layout学习

> 用了这么久的Masonry和SnapKit, 是时候该好好反思一下原理了，毕竟别人的封装是别人的，要把别人的代码和编程思维继承进自己的脑子，才是真的授之以渔
>
> **本系列将从Swift和Objective-C两个系列说起来**
>
> * 了解Frame和Auto Layout布局
> * Auto Layout的写法和使用

## 官方的Auto Layout解释

> 官方文档地址[Auto Layout](https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/AutolayoutPG/index.html)

总结文档的几点:

* 外部界面发生改变(例如窗口大小改变，旋转设备...)
* 内部界面发生改变(内容改变、国际化改变、App支持动态输入)

### 为什么从frame到auto layout

1. frame可以定义CGRect原点到size大小, 但是每次当视图发生变化，就需要手动更新frame
2. autolayout 仅需要首次布局，其他发生改变可以自适应

### 开发思想的转变

开发者要从frame坐标轴的思维，转变到相对距离的思维
