 x<-c("男","女","男","男","女")
> sex<-factor(x)
> sex
[1] 男 女 男 男 女
Levels: 男 女
> attributes(sex)
$levels
[1] "男" "女"

$class
[1] "factor"

> as.numeric(sex)
[1] 1 2 1 1 2
> as.character(sex)
[1] "男" "女" "男" "男" "女"
> #factor()函数把字符串向量转化为因子
> table(sex)
sex
男 女 
 3  2 
> #table()函数统计各因子的出现次数
> h<-c(165,170,168,172,159)
> tapply(h,sex,mean)
      男       女 
168.3333 164.5000 
> #tapply()函数按照因子分组然后每组计算另一变量的概括统计
> A<-matrix(11:66,nrow = 3,ncol=2)
Warning message:
In matrix(11:66, nrow = 3, ncol = 2) :
  data length [56] is not a sub-multiple or multiple of the number of rows [3]
> print(A)
     [,1] [,2]
[1,]   11   14
[2,]   12   15
[3,]   13   16
> #matrix()函数把矩阵元素以一个向量的形式输入，用nrow和ncol规定行数和列数，向量填入矩阵的缺省次序是按列填入，用byrow=TRUE 选项可以转化为换行填入
> nrow(A)
[1] 3
> ncol(A)
[1] 2
> #nrow()和ncol()可以访问矩阵的行数和列数
> dim(A)
[1] 3 2
> #dim()取出矩阵的行数和列数
> A[1,]
[1] 11 14
> A[,1]
[1] 11 12 13
> A[c(1,3);1:2]
Error: unexpected ';' in "A[c(1,3);"
> A[c(1,3),1:2]
     [,1] [,2]
[1,]   11   14
[2,]   13   16
> colnames(A)<-c("X","Y")
> rownames(A)<-c("a","b","c")
> A
   X  Y
a 11 14
b 12 15
c 13 16
> cbind(C(1,2),C(3,4),c(5,6))
Error in C(1, 2) : object not interpretable as a factor
> cbind(c(1,2),c(3,4),c(5,6
+                       ))
     [,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6
> cbind(c(1,2),c(3,4),c(5,6))
     [,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6
> rbind(c(1,2),c(3,4),c(5,6))
     [,1] [,2]
[1,]    1    2
[2,]    3    4
[3,]    5    6

> #cbind(x)把x变成列向量，rbind(x)把x变成行向量
> #如果参数为标量则可以重复使用
> cbind(1,c(2,1,3))
     [,1] [,2]
[1,]    1    2
[2,]    1    1
[3,]    1    3
> #矩阵与向量进行乘法运算时， 向量按需要解释成列向量或行向量。 当向量左乘矩阵时，看成行向量； 当向量右乘矩阵时，看成列向量。 如
> #sum(x*y)表示向量内积,crossprod(A,B)表示矩阵内积
> %0%为外积运算
Error: unexpected SPECIAL in "%0%"
> #solve()求逆矩阵
> #用colnames()和rownames()给矩阵命名
> #矩阵与向量进行乘法运算时，当向量左乘矩阵时，看成行向量向量右乘矩阵时看成列向量
> D<-matrix(c(6,2,3,5,4,1),nrow=3,ncol=3)
> D
     [,1] [,2] [,3]
[1,]    6    5    6
[2,]    2    4    2
[3,]    3    1    3
> D<-matrix(c(6,2,3,5,4,1),nrow=3,ncol=2)
> apply(D,2,sum)
[1] 11 10
> #apply(A,2,FUN)把矩阵A的每一列分别输入到函数FUN中得到每一列的结果
> ara<-array(1:24,dim=c(2,3,4))
> ara
, , 1

     [,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6

, , 2

     [,1] [,2] [,3]
[1,]    7    9   11
[2,]    8   10   12

, , 3

     [,1] [,2] [,3]
[1,]   13   15   17
[2,]   14   16   18

, , 4

     [,1] [,2] [,3]
[1,]   19   21   23
[2,]   20   22   24

> ara[,,2]#第2个矩阵
     [,1] [,2] [,3]
[1,]    7    9   11
[2,]    8   10   12
> ara[,2,2:3]#i(行)为1，2，j(列)为2，k(第几个矩阵)为2，3
     [,1] [,2]
[1,]    9   15
[2,]   10   16
> #矩阵是多位数组，多维数组的定义语法为
> #数组名<-array(数组元素,dim=c(第一下标个数，第二下标个数.....第s个下标个数))
> d<-data.frame()
> d<-data.frame(name=c("李明","张冲","王健"),age=c(30,35,28),height=c(180,162,175),stringsAsFactors = FALSE)
> d
  name age height
1 李明  30    180
2 张冲  35    162
3 王健  28    175
> namese(d)
Error in namese(d) : could not find function "namese"
> names(d)
[1] "name"   "age"    "height"
> #as.data.frame(x)可以把x转化为数据库
> d[2,3]
[1] 162
> d[,2]
[1] 30 35 28
> d[,"age"]
[1] 30 35 28
> d$age
[1] 30 35 28
> d[1:2,'age']
[1] 30 35
> d[1:2,c('age','heigth')]
Error in `[.data.frame`(d, 1:2, c("age", "heigth")) : 
  undefined columns selected
> d[1:2,c('age','height')]
  age height
1  30    180
2  35    162
> d[d[,'age']>=30]
  name age
1 李明  30
2 张冲  35
3 王健  28
> dm<-data.frame('年龄'=1:6,'出游'=c(0,2,2,2,2,1),'疫苗'=c(T,F,F,F,T,F))
> rownames(dm)<-dm[['年龄']]
> rownames(dm)<-dm[['年级']]
> dm[['年级']]<-NULL
> x<-c(2,1,1,3)
> dm[as.character(x),]
    出游  疫苗
2      2 FALSE
1      0  TRUE
1.1    0  TRUE
3      2 FALSE
> x<-c(2,1,1,3)
> xx<-dm[as.character(x),]
> rownames(xx)<-Null
Error: object 'Null' not found
> xx
    出游  疫苗
2      2 FALSE
1      0  TRUE
1.1    0  TRUE
3      2 FALSE
> #如果数据框内的数值要做矩阵运算，需要用as.matrix()函数转化数据框或数据框的子集
> d2<-as.marix(d[,c("age","height")])
Error in as.marix(d[, c("age", "height")]) : 
  could not find function "as.marix"
> d2<-as.matrix(d[,c("age","height")])
> d3<-crossprod(d2)
> d3
         age height
age     2909  15970
height 15970  89269
> d<-data.frame(group=gl(3,10,length = 30),subgroup=gl(5,2,length=30),obs=gl(2,1,length=30))
> d
   group subgroup obs
1      1        1   1
2      1        1   2
3      1        2   1
4      1        2   2
5      1        3   1
6      1        3   2
7      1        4   1
8      1        4   2
9      1        5   1
10     1        5   2
11     2        1   1
12     2        1   2
13     2        2   1
14     2        2   2
15     2        3   1
16     2        3   2
17     2        4   1
18     2        4   2
19     2        5   1
20     2        5   2
21     3        1   1
22     3        1   2
23     3        2   1
24     3        2   2
25     3        3   1
26     3        3   2
27     3        4   1
28     3        4   2
29     3        5   1
30     3        5   2
> #可以用数据框保存试验结果，对有多个因素的试验，往往需要生成多个因素完全搭配并重复的表格，gl()可以生成这样的重复模式，gl()第一个参数是因子水平个数，第二个参数是同一因子水平连续重复次数，第三个参数是总共需要的元素个数
> rec<-list(name='李明',age=30,scores=c(85,76,90))
> rec
$name
[1] "李明"

$age
[1] 30

$scores
[1] 85 76 90

> #以上为列表定义
> rec[[3]]
[1] 85 76 90
> rec[[3]][2]
[1] 76
> rec[["age"]]
[1] 30
> rec[3]
$scores
[1] 85 76 90

> rec$age
[1] 30
> #列表的一个元素可以称为列表的一个变量，单个列表元素必须用两重方括号格式访问，如果使用单重方括号对列表取子集，结果还是列表而不是列表元素，列表的单个元素也可以用$格式访问
> names(rec)
[1] "name"   "age"    "scores"
> names(rec)[names(rec)=='scores']
[1] "scores"
> names(rec)[names(rec)=='scores']<-'三科分数'
> rec[["三科分数"]]
[1] 85 76 90
> rec[["三科分数"]][2]<-0
> rec
$name
[1] "李明"

$age
[1] 30

$三科分数
[1] 85  0 90

> #把某个列表元素赋值为NULL 就是删掉这个元素
> rec[['age']]<-NULL
> rec
$name
[1] "李明"

$三科分数
[1] 85  0 90

> li<-list(a=120,b='F',c=NULL)
> li
$a
[1] 120

$b
[1] "F"

$c
NULL

> li['b']<-NULL#要让元素为NULL值则用单重方括号
> li
$a
[1] 120

$c
NULL

> li['b']<-list(NULL)
> li
$a
[1] 120

$c
NULL

$b
NULL

> li1<-as.list(1:3)
> li1
[[1]]
[1] 1

[[2]]
[1] 2

[[3]]
[1] 3

> li2<-list(x=1,y=c(2,3))
> unlist(li2)
 x y1 y2 
 1  2  3 
> x<-c('10,8,7','5,2,2','3,7,8','8,8,9')
> res<-strsplit(x,',')
> res
[[1]]
[1] "10" "8"  "7" 

[[2]]
[1] "5" "2" "2"

[[3]]
[1] "3" "7" "8"

[[4]]
[1] "8" "8" "9"

> t(sapply(res,as.numeric))
     [,1] [,2] [,3]
[1,]   10    8    7
[2,]    5    2    2
[3,]    3    7    8
[4,]    8    8    9
> #strsplit()输入一个字符型向量并指定一个分隔符，返回一个项数与字符型向量元素个数相同得列表，列表每对应于字符型向量中一个元素得拆分结果
> ls()
 [1] "A"   "a1"  "ara" "d"   "D"   "d2"  "d3"  "dm" 
 [9] "h"   "li"  "li1" "li2" "m1"  "rec" "res" "sex"
[17] "v1"  "x"   "xx" 
> rm(ls())
Error in rm(ls()) : ...要么含名字，要么是字符串
> rm(A,al,ara,d,D,d2)
Warning message:
In rm(A, al, ara, d, D, d2) : object 'al' not found
> ls()
 [1] "a1"  "d3"  "dm"  "h"   "li"  "li1" "li2" "m1" 
 [9] "rec" "res" "sex" "v1"  "x"   "xx" 
> #ls()查看工作空间变量，rm 删除空间变量