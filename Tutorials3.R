#A

#Remvoe from data rm(airquality)
library(readxl)
library(writexl)

list.files("DataTutorial",full.name = T)
readxl::read_excel("DataTutorial/file_example_XLS_50.xls", skip=2)->df1
df1
read.csv("https://datahub.io/core/country-list/r/data.csv", encoding = "UTF-8")->df2
df2 |> head()
df2[df2$Name=="Slovenia",]
writexl::write_xlsx(df2,"DataTutorial/data.xlsx")


#B
list.files("DataTutorial",full.name = T)
read.csv("DataTutorial/time_series_covid19_confirmed_global.csv"
)->df3
df3 |> head()
View(df3)

df3[df3$Country.Region == "Slovenia",ncol(df3)-(6:0)]->df4

diff(c(2,5,6,10))#returns 5-2,6-5,10-6 -> 3,1,4

diff(unlist(df4))
write.csv(df4,"DataTutorial/Slovenia.csv")
list.files("DataTutorial",full.name = T)

sum(df3[,ncol(df3)])#all total
sum(df3[,ncol(df3)])-sum(df3[,ncol(df3)-1])#all total yesterday

df3[,c(2,ncol(df3))]

write.csv(df3[,c(2,ncol(df3))],gzfile("DataTutorial/CovidGlobal.csv.gz"))


#C
#read.table("DataTutorial/SI.txt",sep="\t")->df5   also works
read.csv("DataTutorial/SI.txt",sep="\t",encodign="UTF-8")->df5
df5 |> head()
df5[,-4:-9]->df6
























