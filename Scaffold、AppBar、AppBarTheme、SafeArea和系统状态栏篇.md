# Flutter 设计百科全书
## Scaffold、AppBar、AppBarTheme、SafeArea和系统状态栏篇

#### 前言
本章内容可能在Android 6/7 之前有部分不兼容，因为年代久远，不做考虑，Andoird 10+ 基本都没问题。

### 本章内容
+ Scaffold、页面嵌套
+ AppBar 和 AppBarTheme
+ SafeArea 安全区域
+ SystemUiOverlayStyle 系统状态栏 和 沉浸式状态栏(透明状态栏) 和 高斯模糊方案
+ 底部导航栏 和 沉浸式导航栏(探索三大金刚)
+ 底部小黑条
+ 手机不兼容问题，如 小米手机。

### Scaffold、页面嵌套
> 推荐把Scaffold作为每个页面的基础组件，并为它搭配上AppBar组件。
> 
> 原因：AppBar中的SystemUiOverlayStyle，是设置手机 系统状态栏和系统导航栏的重要属性，如果不增加该配置，状态栏跟页面颜色可能会冲突

> 大多数时候Scaffold不推荐嵌套，大部分情况在App的导航页面会这样用。

```DART
extendBody: true,
extendBodyBehindAppBar: true,
```

### AppBar 和 AppBarTheme

本章不介绍主题Theme相关的基础知识，有需要请看我另外专门介绍Theme的篇章。

```DART
AppBarTheme(
  backgroundColor: Colors.white,// 背景色
  foregroundColor: Colors.black,// 前景色
  elevation: 0, // 高度
  toolbarHeight: kToolbarHeight,
  scrolledUnderElevation: 0, // 滚动高度
  surfaceTintColor: Colors.black, //叠加色
  systemOverlayStyle: 
   SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // 状态栏背景色
    statusBarBrightness: Brightness.light, // 状态栏主题
    statusBarIconBrightness: Brightness.dark, // 状态栏图标主题
    systemNavigationBarColor: Colors.white, // 导航栏背景色
    systemNavigationBarDividerColor: Colors.black //导航栏线条色
  ),
);
```

> SystemUiOverlayStyle 非常重要，它是每个页面状态栏的属性设置，但是这个字段网上讲的不太细致

> 不要在AppBar内的Text 和 Button 中设置 color，而是通过AppbarTheme的foregroundColor 自动设置文本的颜色，

> toolbarHeight 默认设置是一个常量，double kToolbarHeight = 56.0，一般情况不要在 全局设置中设置为0或者其他值，保持它的默认值就好。

> elevation Z-Index 高度，会产生阴影和叠加色。

> scrolledUnderElevation 滚动高度，是body内list组件滚动时就会产生的高度。

> systemNavigationBarColor 这个属性只有安卓有效（存疑），它是设置安卓底部小黑条后面的背景色

> statusBarColor ！！！ 再也不用去改安卓原生代码实现沉浸式状态栏了，直接这里就可以设置沉浸式状态栏（存疑：安卓老版本可能有兼容问题）

### SafeArea 安全区域
安全区域指的是 排除刘海屏，水滴屏和圆角屏幕的边缘的区域。
ListView 默认是有一个SafeArea区域Padding的，当你为ListView设置Padding时，这个Safe边距将会失效。

> SafeArea 不包括AppBar 和 BottomNavigationBar 


> MediaQuery.of(context).padding
> MediaQuery.of(context).viewPadding
> MediaQuery.of(context).viewInsets

通过viewPadding字段可以取到屏幕四边的安全区域尺寸，
viewPadding.top 代表顶部安全区域

通过设置extendBodyBehindAppBar之后，可以让body的内容跑到Appbar和状态栏后方，但是可以通过 SafeArea 或  viewPadding.top 让部分内容 不被Appbar 覆盖。

### SystemUiOverlayStyle 系统状态栏 和 沉浸式状态栏(透明状态栏) 和 高斯模糊方案