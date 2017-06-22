> substr('JAN07',1,3)
[1] "JAN"
> #substr(x,start,stop)从字符串x中取出第start个到第stop个子串
> as.numeric(substr(c('JAN07','MAR66'),4,5)
+ 
+ )
[1]  7 66
> #用as.numeric()转化为数值，用as.character()转化为字符型
> x<- '10,8,7'
> strsplit(x,',',fixed = TURE)
Error in strsplit(x, ",", fixed = TURE) : object 'TURE' not found
> strsplit(x,',',fixed = TRUE)
[[1]]
[1] "10" "8"  "7" 

> #strsplit()可以把一个字符串拆开，第二个参数为拆开的根据
> x<-'1:2:3'
> gsub(';','.',x,fixed=TRUE)
[1] "1:2:3"
> gsub(':','.',x,fixed=TRUE)
[1] "1.2.3"
> #gsub可以替换字符串中的子串，第一个参数为要替换的子串，第二个为替换后的子串，第三个为总名称
> complex(1,0,2,-1)
[1] -1+0i
> complex(c(1,0,2,-1),c(0,1,0,-1))
[1]  0+0i  1+0i  0+0i -1+0i
> #complex()第一个参数代表实数部分的系数，第二个参数代表虚数部分
> x<-c(1,4,6,25)
> x[-2]
[1]  1  6 25
> #负下标代表扣除相应的元素后的子集
> seq(along=x)[x>5]
[1] 3 4
> x<-c(1,2,3,4,5,6)
> which(x>5)
[1] 6
> #which()可以用来找满足条件的下标，which.min(),which.max()求最小值的下标和最大值的下标 seq(along=x)会生成由x的下标组成的向量
> sex<-c("男","男","女","男","女")
> sex.color<-c("男"='blue','女'='red')
> cols<-sex.color[sex];print(cols)
    男     男     女     男     女 
"blue" "blue"  "red" "blue"  "red" 
> cols
    男     男     女     男     女 
"blue" "blue"  "red" "blue"  "red" 
> unname(cols)
[1] "blue" "blue" "red"  "blue" "red" 
> #上面为映射
> unique(c(1,1,5,6,6))
[1] 1 5 6
> math(5,c(1,5,2))
Error in math(5, c(1, 5, 2)) : could not find function "math"
> match(5,(1,5,2))
Error: unexpected ',' in "match(5,(1,"
> match(5,c(1,5,2))
[1] 2
> #match返回第一个参数在第二个数组中的位置
> #intersect(x,y)求交集，union(x,y)求并集
> setdiff(c(5,7),c(1,5,2,5))
[1] 7
> #setdiff(x,y)求差集，即x的元素不属于y元素的组成的集合
> #setequal(x,y)判断是否相等，不受次序和重复元素的影响
> as.numeric(c(FALSE,TRUE))
[1] 0 1
> #可以用as.xxx()的函数在不同类型之间进行强制转化
> x<-table(c(1,2,1,3,2,1));print(x)

1 2 3 
3 2 1 
> attributes(x)
$dim
[1] 3

$dimnames
$dimnames[[1]]
[1] "1" "2" "3"


$class
[1] "table"

> #用attributes()读取x的所有属性
> #它也可以用来修改属性 如 attribures()<-NULL
> ages<-c("李明"=30,"张冲"=24,"刘颖"=21)
> name(ages)
Error in name(ages) : could not find function "name"
> names(ages)
[1] "李明" "张冲" "刘颖"
> attr(ages,names)
Error in attr(ages, names) : 'which' must be of mode character
> attr(ages,"names")
[1] "李明" "张冲" "刘颖"
> attr(ages,"names")<-null
Error: object 'null' not found
> attr(ages,"names")<-NULL
> ages
[1] 30 24 21
> #可以用attr(对象,"属性名")读取和修改单个属性
> s<-101:200
> attr(s,'author')<-'李小萌'
> attr(s,'date')<-2017.6.22
Error: unexpected numeric constant in "attr(s,'date')<-2017.6.22"
> attr(s,'date')<-2017
> str(s)
 atomic [1:100] 101 102 103 104 105 106 107 108 109 110 ...
 - attr(*, "author")= chr "李小萌"
 - attr(*, "date")= num 2017
> #str()能够显示对象的类型和主要结构以及典型内容
> #as.POSIXct(c(’1998-03-16‘))把年月日的日期转化为R的标准日期
> x<-as.POSIXct(c('1998-3-16','2015-11-22'))
> c(difftime(x[2],x[1],units='days'))
Time difference of 6460 days
> #difftime(time1,time2,units='days')计算time1减去time2的天数
> #units还可以选为'secs','mins','hours'等
> as.character(x)
[1] "1998-03-16" "2015-11-22"
> as.character(x,format='m%+d%+%Y')
[1] "m周一 3月 16 00:00:00 CST 1998d周一 3月 16 00:00:00 CST 19981998"  
[2] "m周日 11月 22 00:00:00 CST 2015d周日 11月 22 00:00:00 CST 20152015"
> as.character(x,format='m%/d%/%Y')
[1] "m/d/1998" "m/d/2015"
> as.character(x,format='%m/%d/%Y'
+ )
[1] "03/16/1998" "11/22/2015"
> #可以用format选项指定显示格式