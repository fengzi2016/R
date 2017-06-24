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
