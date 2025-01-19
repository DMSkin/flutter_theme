# Flutter 设计百科全书
## Scaffold、AppBar、AppBarTheme和系统状态栏篇

### 本章内容
+ Scaffold、页面嵌套
+ AppBar 和 AppBarTheme
+ 系统状态栏
+ 底部导航栏
+ 沉浸式状态栏(透明状态栏)
+ 沉浸式导航栏

### Scaffold、页面嵌套
> 推荐把Scaffold作为每个页面的基础组件，并为它搭配上AppBar组件。
> 
> 原因：AppBar中的SystemUiOverlayStyle，是设置手机 系统状态栏和系统导航栏的重要属性，如果不增加该配置，状态栏跟页面颜色可能会冲突

> 大多数时候Scaffold不推荐嵌套，大部分情况只有在App的导航页面会被这样用到。

### AppBar 和 AppBarTheme
> 不要在AppBar内的Text 和 Button 中设置 color，而是通过AppbarTheme的foregroundColor 自动设置文本的颜色，

> toolbarHeight 默认设置是一个常量，double kToolbarHeight = 56.0，一般情况不要在 全局设置中设置为0或者其他值，保持它的默认值就好。

> elevation Z-Index 高度，会产生阴影和叠加色。

> scrolledUnderElevation 滚动高度，是body内list组件滚动时就会产生的高度。

> systemNavigationBarColor 这个属性只有安卓有效（存疑），它是设置安卓底部小黑条后面的背景色

> statusBarColor ！！！ 再也不用去改安卓原生代码实现沉浸式状态栏了，直接这里就可以设置沉浸式状态栏（存疑：安卓老版本可能有兼容问题）

### AppBar 和 AppBarTheme
