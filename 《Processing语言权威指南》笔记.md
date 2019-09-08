## 01、代码要素P17

#### 函数

函数名（参数）

`size(200,200)`

有的函数没有参数，有的函数会有很多



#### 表达式&语句

运算符`+-*/=><`

表达式可以是一个简单的数字，也可以是多个元素的组合

表达式总有一个值

一组表达式组成一个语句

我们用语句定义变量、给变量赋值、运行函数、创建对象

语句终结符`;`



#### 注释

`//注释`

```
/*

多行注释

*/
```



#### 控制台

`print()`

`println()`



#### 其它

- Processing需区分大小写
- 代码中允许存在空格





## 02、形状一：坐标与基本图形P23

#### 语法介绍

`size()`

> 该函数中应始终使用数字，而不是变量

`point()`

`line()`

`triangle()`

`quad()`

`rect()`

`ellipse()`

`bezier()`

`background()`

`fill()`

`stroke()`

`nofill()`

`nostroke()`

`strokeweight()`

`strokeCap()`

`strokeJoin()`

`smooth()`

`nosmooth()`

`ellipseMode()`

`rectMode()`





## 03、变量P37

#### 数据类型

![image-20190902201501143](/Users/jermynlin/Library/Application Support/typora-user-images/image-20190902201501143.png)



#### 变量

储存数据的容器

每个变量都有两部分：名称和数值

每个变量都需要分配数据类型

一个变量必须在使用前声明，描述变量的数据类型和变量名称，例如

```
int x;		//声明变量x为int（整数）
x = 50;		//将50赋予x
```

*在声明变量后，其数据类型不可以再进行修改



#### 语法介绍

`int` 整数

`float` 浮点

`boolean`

`true` 布尔值

`false` 布尔值

`=` 赋值

`width`

`height`





## 04、算术与函数P43

#### 语法介绍

`+`

`-`

`*`

`/`

`%` 取模，返回整数值

`()`

`++` 递增

> `x++`等价于`x = x + 1`
>
> ![image-20190903165813727](/Users/jermynlin/Library/Application Support/typora-user-images/image-20190903165813727.png)

`--` 递减

`+=` 加等于

> `x += 5` 等价于 `x = x + 5`

`-=` 减等于

`*=` 乘等于

`/=` 除等于

`-` 取反

`ceil（）`

> 返回不小于参数值的最接近的值
>
> ```
> int x =ceil(2.1);		//为x赋值3
> ```

`floor（）`

> 返回不于于参数值的最接近的值
>
> ```
> float x = round(2.1);		//为x赋值2.0
> ```

`round（）`

> 返回最接近参数的值，采用四舍五入

`min（）`

> 返回一组数中的最小值

`max（）`

> 返回一组数中的最大值



#### 操作符优先级

`*/%` > `+-` > `=`





## 05、控制一：判断P51

代码行的执行顺序陈作程序的流（flow），可以通过控制结构来改变。

#### 语法介绍

`>`

`<`

`>=`

`<=`

`==` 等于

`!=` 不等于

`if` 条件语句

`else`

`{}`

`&&` 逻辑与

`||` 逻辑或

`!` 逻辑非



#### 条件语句

```
if(test){
	statements
}
```

test必须是一个结果为true或false的表达式，当结果为true时，程序会执行{ }里的代码块，否则跳过。



当if测试条件为false时，使用else关键字可以扩展if语句。如果if中的条件为false则执行else中的代码。

```
if(test){
	statements 1
}else{
	statemants 2
}
```



条件语句可以嵌套在其它条件语句中

```
if(test 1){
	if(test 2){
		statements 1
	}else{
		statements 2
	}
}else{
	statements 3
}
```



if语句可以使用else进一步扩展条件判断

```
if(test 1){
	statements 1
}else if(test 2){
	statements 2
}else{
	statements 3
}
```



#### 逻辑运算符

如果需要将两个或多个关系表达式组合在一起，以及反转逻辑值时，可以使用逻辑运算符。它允许同事判断多个条件。

`&&` 逻辑与（and）

`||` 逻辑或（or）

`!` 逻辑非（not）

```
int a=10;
int b=20;
if((a>15)||(b<30)){
	ellipse(50,50,36,36);
}
```

```
boolean b = true;
println(b);					//输出"true"
println(!b);				//输出"false"

println(5>3);				//输出"true"
println(!5>3);			//输出"false"
```

*逻辑运算符只可以用于布尔变量





## 06、控制二：重复P61

#### 语法介绍

`for`



#### 重复

```
for(init;test;update){
	statements
}
```

init(初始化)、test(判断)、update(更新)



#### 循环嵌套

![image-20190903183514713](/Users/jermynlin/Library/Application Support/typora-user-images/image-20190903183514713.png)





## 07、形状二：顶点P69

#### 语法介绍

`beginShape()`

`endShape()`

`vertex()`

`curveVertex()`

`bezierVertex()`



#### ……





## 08、数学二：曲线P79

#### 语法介绍

`sq()`

`sprt()`

`pow()`

`norm()`

`lerp()`

`map()`



#### ……





## 09、颜色一：用数字定义颜色P85

#### 语法介绍

`color`

`color()`

`colorMode()`



#### ……





## 10、图像一：显示与染色P95

![image-20190905175048357](/Users/jermynlin/Library/Application Support/typora-user-images/image-20190905175048357.png)

#### 语法介绍

`PImage` 声明数据类型

`loadImage()` 载入图像

`image()`

`tint()` 上色

`noTint()`



#### 显示

```
PImage img;
img = loadImage("arch.jpg");	//此图像必须在草图的data文件夹内
image(img,0,0,60,60);					//显示图像
```

> 将图像文件放置到当前程序的data文件夹：
>
> - 菜单>速写本>添加文件
> - 直接拖拽图像到Processing窗口中
>
> 查看data文件：菜单>速写本>打开程序目录（Command+K）



#### 图像颜色与透明度

`tint()`函数可以为图像上色。函数用法同`fill()`、`stroke()`，但它只对图像起作用。运行`noTint()`关闭上色。

```
Pimage img;
img = loadImage("arch.jpg");
background(255);
tint(255,102);			//影响图像透明度，不改变上色
image(img,0,0,100,100);
```





## 11、数据二：文本P101

#### 语法介绍

`char` 数据类型char储存类似于A、d、5、¥这样的印刷符号

`String` 数据类型String储存单词和句子

```
char a = 'n';
println(a);				//输出"n"
String b = "bee";
println(b);				//输出"bee"
```

我们用双引号将字符串括起来，以示与程序的其它部分的区别。双引号表示“s”是一个字符串，单引号表示's'是一个字符，没有任何引号则表示它可能是一个变量。





## 12、数据三：转换与对象P105

#### 语法介绍

`boolean()`

`byte()`

`char()`

`int()`

`float()`

`str()`



`.` 点操作符

`PImage.width`

`PImage.height`

`String.length()`

`String.startsWidth()`

`String.endWidth()`

`String.charAt()`

`String.toCharArray()`

`String.subString()`

`String.toLowerCase()`

`String.subString()`

`String.toLowerCase()`

`String.toUpperCase()`

`String.equals()`



#### 数据转换

有些数据类型点转换是自动进行的

```
float f = 12.6;
int i = 127;
f = i;			//将127转换给127.0
i = f;			//错误
```

有些数据如果在转换中会丢失一部分信息，那么就必须使用显式的函数转换，显式转换函数包括`boolean()` `byte()` `char()` `int()` `float()` `str()`，可以将其它类型的数据转换为函数名所代表的数据类型。

##### 显式函数转换（P106）



#### 对象

数据类型int、float、boolean、char被称为简单数据类型，因为它们储存的豆沙单个数据元素。

数据类型String、PImage、PFont则不同，由这些数据类型创建的变量称为对象。对象通常由多个简单数据类型（或者其它对象）组成，通常还包含一些操作这些数据的函数。

对象数据类型的名称为首字母大写，用以区别简单数据类型。



由PImage、PFont、String声明的变量都是对象。对象内的变量叫做域（field），对象内的函数叫做方法（method）。域和方法可以通过点运算符号`.`来调用，在对象的名称和对象的成员变量名或者方法名之间加一个`.`。

```
PImage img = loadImage("ohio.jpg");	//载入320x240像素大小的图像
int w = img.width;									//对w赋值320
int h = img.height;									//对h赋值240
```

变量width和height是只读的。

##### String数据类型的方法（P108）





## 13、字体设计一：显示P111

#### 语法介绍

`PFont`

`loadFont()`

`textFont()`

`text()`

`textSize()`

`textLeading()`

`textAlign()`

`textWidth()`



#### 加载字体、绘制文本

1.转换字体

菜单>工具>创建字体，该操作将字体转换成VLW格式，并保存在当前程序的data文件夹中。

2.设置字体

`PFont`声明变量

`loadFont()`加载字体文件

`textFont()`设置当前字体

`text()`将字符绘制到屏幕上

> `text(data,x,y)`
>
> `text(string data,x,y,width,height)`
>
> 参数data可以为String、char、int、float型，参数stringdata必须是String型。参数x、y定义左下角坐标位置。可选参数width、height用于定义边界。
>
> `fill()`函数可以控制文本颜色和透明度。

```
PFont font;
font = loadFont(Ziggurat-32.vlw);
textFont(font);
fill(0);

text(19,0,30);		//在(0,30)处写19
text('R',0,60);		//在(0,60)处写R
text("LAX",0,90);	//在(0,90)处写LAX

String s ="Response is the mudium";
text(s,0,120);		//在(0,120)处写Response is the mudium
```



#### 文字属性

*Processing中的字体是位图而非矢量。

`textSize(size)` 设置字体尺寸

`textLeading(dist)` 设置文本行间距，参数dist以像素为单位

`textAlign(MODE)` 设置文本对齐方式，参数MODE可以为LEFT、CENTER、RIGHT

`textWidth()` 计算单个字符或者文本

*函数`textSize()` `textLeading()` `textAlign()` 的设置会影响其后所有的text()函数中的文本。但是`textSize()` 函数会重置文本间距，`textFont()`函数会重置尺寸和间距。





## 14、数学三：三角学

#### 语法介绍

`PI` 数学常量π

`QUARTER_PI`

`HALF_PI`

`TWO_PI`

`radians()` 将角度转换为弧度

`degrees()` 将弧度转换为角度

`sin()`

`cos()`

`arc()`





