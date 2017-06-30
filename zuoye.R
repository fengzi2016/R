f<-array(0,dim = c(100,2))
for(i in 1:100){
  bi<-20
  bj<-0.6
  x<-c(1:25)
  u<-rnorm(25)
  y<-bi+bj*x+u
  f[i,]<-c(lm(y~x)$coefficients)
}
h<-apply(f,2,mean)
h
