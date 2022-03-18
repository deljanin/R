#A
a <- 3+5-10
a
4^5
4**5
log(3*4)
sin(pi)
1.224606e-16 #10^-16
1.224606e+16
sqrt(4)/log10(100)
abs(-10)+floor(4.6)+ceiling(3.2)
#B
v0 <- c("table","chair","closet","window")
v0
v0[4] <- "shelf"
v0
v1<-c(1,4,3,15,75)
v1
v2<-c(5,6,0,sqrt(2),-4)
v2
v1+3->v1
v1
v2<-v2*2
v2
v1+v2
v1
v2
sum(v1*v2)   #Scalar product
c(v1,v2)
#C
c(1,"a",T) #Parsed to String
v<-1:100
v
sum(v)
v1<-v^2
sum(v1)
mean(v)
min(v)
max(v)
v[-(1:70)]<-0
v
v[-seq(5,100,5)]<--1
v
#D
c(100:1)
c(-100:-1)
c(-1:-100)
c(seq(-50,1000,10))
#With :
c(-5:100)*10
c(seq(1,106,3))
#With :
x<-1:106
x<-c(1,x[x%%3==0],106)
#or like this:
x<-0:35*3+1
x

#E
l1<-list(1,"a",T)
l1
l2<-list(2,3,2,"banana",1:10)
l2
l1[[2]]<-"A"
l1
l3<-c(l2,l1)
l3
l2
l2[[5]][4]
l4<-list("beer",4.3,l1,"KOPER",l2)
l4
l4[[3]][[3]]<--2
l4
l5<-list(4,5.3,1.4,0,-3,3,3)
sum(unlist(l5))


#F

m1<-matrix(1:9,nrow = 3, ncol = 3,byrow = T)
m1
m2<-matrix(9:1,nrow = 3,ncol = 3)
m2
m3<-matrix(1:4,nrow = 2, ncol = 6)
m3  

m1+m2

m3-10->m3

m1*3->m1


rbind(cbind(m1,m2),m3)

m1^2


#G

dim(m3)
m1[2,1]<--1
m1
