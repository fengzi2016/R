f<-function(x){
  n<-length(x)
  xbar<-mean(x)
  S<-sd(x)
  n/(n-1)/(n-2)*sum(x-xbar)^3/S^3
}
f(1)
函数的形参、实参对应关系可以写成一个列表，如fsub(x=3,1)中的对应
关系可以写成列表list(3,y=1) 如果调用用do.call()  如 do.call(fsub,list(3,y=1))
和fsub(3,y=1)效果相同
...形参，在调用函数时所有没有形参与之匹配的实参，不论是否带名字，都自动归入这个参数
如 sapply(X,FUN,...)

#函数内部可以读取全局变量的值，但一般不能修改全局变量的值
#在函数内部如果要修改全局变量的值，用<<-代替<-赋值
x.g<-9999
f<-function(x){
  cat('函数内读取：全局变量x.g=',x,g, '\n')
  x.g<<- -1
  cat('函数内对<<-全局变量赋值:x.g=',x.g,'\n')
  
}
f()
#递归
fib1<-function(n){
  if(n==0)return(0)
  else if(n==1)return(1)
  else if(n>=2){
    Recall(n-1)+Recall(n-2)
  }
}
for(i in 0:10) 
  cat('i=',i,'x[i]=',fib1(i),'\n')
#画图函数(plot等)输出函数(cat,print,save等)
#Filter(f,x)用一个判断真假的一元函数作为筛选规则，从列表或向量x中选出f作用为真值的元素子集
#Find()和Filter()类似，但是仅返回满足条件的第一个，也可以用参数right=TRUE返回满足条件的最后一个
#positon()和Find()类似，但是是返回满足条件的一个元素的下标位置
#Map()以一个函数为参数，可以对其它参数的每一对应元素进行变换，结果为列表
#Reduce()函数把列入列表（或向量）的元素依次地用给定地函数进行合并计算
#intersect()计算两个集合地交集
#intersect(intersect(intersect(x[[1]],x[[2]]),x[[3]]),x[[5]])
#上式等于Reduce(intersect,x)

      