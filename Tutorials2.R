#A

m1<-matrix(1:9,3,3,T)
one<-c("Petar","Klavdija","Uros")
df1<-data.frame(one,
                two=c("Mursic","Kutnar","Godnov"),
                three=c(T,F,T))
df1
colnames(m1)<-c("column1","column2","column3")
m1
rownames(m1)<-c("row1","row2","row3")
m1
rownames(m1)[2] <- "mouse"
m1["mouse","column3"]
m1["mouse","column3"]<-100
m1
m1[,"column2"]<-10:12
m1

colnames(df1)<-c("Name","Surname","Gender")
df1
df1[,2]
df1$Gender
df1$Year<-c(88,80,75) #cbind also works
df1
df1[nrow(df1)+1,]<-list("Ademir","HUjudurovic",T,87)
df1


#B


v1<-1:26
names(v1)<-letters
v1[c("a","e","i","o","u")]
v1

l1<-list(m1,df1,v1,5)
names(l1) <- list("matrix","dataframe","vector","number")
l1

l1[["number"]]<-6
l1

l1<-rev(l1) # or l1[4:1] or dynamically l1[length(l1):1]
l1[[1]]

l1$vector

c(l1$vector[1:19],sh=19.5,l1$vector[-1:-19])
head(l1$dataframe,2) #or as below VVV
l1$dataframe |> head(2)

library(tidyverse)


#Tidyverse version VVVV
l1$dataframe %>% head(2)

#C

f1<-factor(c(1:3,1:3,2,0,3:4))
f1
#Counts how many times a factor repeats
summary(f1)["3"]

levels(f1)[3]<-6
f1

#head(airquality)
airquality %>% head()

factor(airquality$Month) |> levels() |> as.numeric()
month.name[unique(airquality$Month)]

head(mtcars)
mtcars[,"cyl"] |> factor() |> levels() |> length #me
mtcars$cyl |> unique() |> length() #prof



#D

vpH<-runif(100,0,14)
?cut
cut(vpH,breaks=c(0,3,6,8,11,14),
    labels = c("s.acid","w.acid","neutral","w.base","s.base")) -> fpH
summary(fpH)["s.acid"]

children<-sample(0:6, 65, replace = T)
?sample()
sample(LETTERS)
sample(month.name,13,replace = T)

cut(children,breaks=c(-Inf,0,1,Inf),labels = c("0","1",">=2"))
