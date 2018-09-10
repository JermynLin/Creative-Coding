# Processing

##### 系统变量

---

frameCount					//当前帧数

width						//

height

mouseX

mouseY



##### Time

---

millis()						//返回自启动程序以来的毫秒数

```
void draw() {
  int m = millis();
  noStroke();
  fill(m/255);
  rect(25, 25, 50, 50);
}
```

second()						//返回系统当前时间值（0-59）

minute()						//返回系统当前时间值（0-59）

hour()						//返回系统当前时间值（0-23）

day()						//返回系统当前时间值（1-31）

month()						//返回系统当前时间值（1-12）

year()						//返回系统当前时间值



##### 图形

---

point(x,y)								//点

line(x1,y1,x2,y2)							//线

rect(x,y,a,b)								//矩形（左上角坐标x,左上角坐标y,宽,高）

ellipse(x,y,a,b)							//圆（中心坐标x,中心坐标y,宽,高）

triangle(x1,y1,x2,y2,x3,y3)					//三角形

quad（x1，y1，x2，y2，x3，y3，x4，y4）	//四边形

arc(a，b，c，d，start，stop，mode)		//弧（x，y，宽，高，开始角度，停止角度，OPEN/CHORD）

rectMode(CENTER)						//坐标设定于矩形中心



##### 函数

---

abs(x)						//返回绝对值

log(n)						//logₑⁿ

sq(x)						//平方 x²

sqrt(x)						//平方根 √x

pow(x,n)						//xⁿ

exp(n)						//eⁿ

sin(x)						//正弦

cos(x)						//余弦

tan(x)						//正切

```processing
//圆周运动

void setup(){
 size(300, 300);
 r = 20;						//圆的直径
 R = 100;						//运动轨迹半径
}

void draw(){
 background(234, 113, 107);
 translate(width/2, height/2);	//原点移至屏幕中心
 noStroke();
 x = R * cos(angle);
 y = R * sin(angle);
 ellipse(x, y, r, r);
 angle += 0.05;
}
```

raidans(x)					//角度值转弧度值

degrees(x)					//弧度值转角度值

> 与角度相关的函数参数输入采取的是弧度制
>
> 所以 sin90° ，应该写成 `sin(PI/2)`；或者`sin(radians(90))`



##### 设置

---

fill(x)						//填充（灰度0-255）

> fill(x,a)						//填充（灰度，透明度0-255）
>
> fill(r,g,b)						//填充（红0-255，绿，蓝）
>
> fill(r,g,b,a)					//填充（红，绿，蓝，透明度）

noFill()						//不填充

stroke(x)						//描边

> stroke(x,a)
>
> stroke(r,g,b)
>
> stroke(r,g,b,a)

noStroke()					//不描边

strokeweight(x)				//描边粗细

background(x)				//背景填充

> background(x,a)
>
> background(r,g,b)
>
> background(r,g,b,a)



##### Transform

---

translate()					//平移坐标系

> translate(x,y)
>
> translate(x,y,z)

> 坐标系变换的效果时叠加的
>
> 例如
>
> > translate(40, 10);
> >
> > translate(10, 40);
> >
> > ellipse(0, 0, 20, 20);
>
> 效果等于
>
> >translate(50, 50);
> >
> >ellipse(0, 0, 20, 20);

scale(s)						//缩放坐标系

> scale(x,y)
>
> scale(x,y,z)

rotate(angle)					//旋转坐标系

```processing
float r, R, angle;

void setup(){
 size(300, 300);
 r = 20;			//圆的直径
 R = 100;			//运动轨迹的半径
}

void draw(){
 background(234, 113, 107);
 translate(width/2, height/2);   //将原点移至屏幕中心
 rotate(angle);
 noStroke();
 ellipse(0 ,R ,r ,r);
 angle += 0.05;
}

//draw函数里的代码每执行完一次，第二次循环时坐标系都会回到初始状态
```

pushMatrix()					//保存坐标系状态

popMatrix()					//读取坐标系状态

> `pushMatrix`和`popMatrix`允许嵌套使用
>
> 例如
>
> > pushMatrix();
> > …
> >    pushMatrix();
> >    …
> >    popMatrix();
> >    …
> > popMatrix();
> > …



##### Random

---

random()

> random(high)				//0-high的随机数
>
> random(low, high)			//low-high的随机数

randomSeed(seed)

> 将seed参数设置为常量，以便在每次运行软件时返回相同的伪随机数。

noise()						//产生比random更自然的数字序列，结果值介于0.0-1.0之间

> noise(x)
>
> noise(x,y)
>
> noise(x,y,z)
>
> ```processing
> float x = 0;
> 
> void draw() {
>   background(204);
>   x = x +0.01;
>   float n = noise(x) * width;
>   line(n, 0, n, height);
> }
> 
> //noise() 输入固定值返回固定值，输入变化值返回变化值，变化值越小产生数列越平滑，变化值在0.005-0.03之间对大所数应用程序最有效
> ```



##### Iteration

---

for()

> for (init; test; update) {			//变量初始化；测试；更新
>
> statements 						//循环体
>
> }   
>
>
>
> 执行顺序
>
> > init (变量初始化)
> >
> > test (满足继续执行）
> >
> > statement (第一次循环)
> >
> > update (更新)
> >
> > test (满足继续执行)
> >
> > statement (第二次循环)
> >
> > update (更新)
> >
> > test (满足继续执行)
> >
> > ···
> >
> > update (更新)
> >
> > test (不满足，跳出循环)
>
>
>
> ```
> void setup(){
> 
>     for(int i = 0; i < 10; i++){
> 
>         println (i);
> 
>     }
> 
> }
> ```
>
>
>
> for()嵌套
>
> ```
> void setup(){
> 
>       size(700, 700, P2D);
> 
>       background(202, 240, 107);
> 
>    }
> 
> 
> 
> void draw(){
> 
>       fill(0);
> 
>       for(int i = 0;i < 5;i++){
> 
>           for(int j = 0;j < 5;j++){
> 
>           float x = 150 + i * 100;
> 
>           float y = 150 + j * 100;
> 
>               ellipse(x, y , 60, 60);
> 
>               println(i + ":" + j);
> 
>           }
> 
>       }
> 
>    }
> ```
>
>

> for(datatype element: array){
>
> statements;
>
> }

while()

> while (expression) {
>
> statements; 
>
> }
>
>
>
> ```
> void setup(){
> 
>    int a = 0;
> 
>    while(a < 10){
> 
>        println(a);
> 
>        a++;
> 
>    }
> 
> }
> ```
>
>



##### 条件

---

if()

> if (test) {
>
> statements;  
>
> }