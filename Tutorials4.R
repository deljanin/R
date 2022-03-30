library("lubridate")
library("readxl")
library("tidyverse")
#A
#1
today()
#2
month.name[month(today())]
month(today(),label=T,abbr=F)
#3
weekdays(today())
wday(today(),label = T, abbr = F)
#4
v1<-c("13.1.2021","3.Jan.2011","4 March 14")
dmy(v1)
#5
today() - dmy("1.Feb.2020")
#6
dmy(c("1.1.2022","1.1.2023")) |> diff()
dmy("1.1.2023") - dmy("1.1.2022")
#7
dmy("25.12.2010")+years(0:9) -> xmas
wday(xmas)
xmas[wday(xmas)>1 & wday(xmas)<7] |> year()
#8
dmy("3.1.2021")+years(0:100)->school

school[wday(school) == 7]+days(2)->school[wday(school) == 7]
school[wday(school) == 7]+days(1)->school[wday(school) == 7]

school




#B
#1
dB1<-"April 5th 22";dB2<-"30.1.2020"; dB3<-"2/14/00"; dB4<-"2010-6-19"; dB5<-"4. Jan 1999"
mdy(dB1)
dmy(dB2)
mdy(dB3)
ymd(dB4)
dmy(dB5)

#2
format(mdy(dB1),"%m.%d %D %M %v %V %y %Y %h %H")
format(mdy(dB1),"%V %y %Y %h %H")
format(mdy(dB1),"%d.%m.%Y")
format(dmy(dB2),"%m/%d/%y")
format(ymd(dB4),"%Y-%m-%d")
format(dmy(dB5),"%B %d %y")


#3
readxl::read_excel("DataTutorial/Sample - Superstore.xls",sheet=1)->df8
class(df8$`Order Date`)
as_date(df8$`Ship Date`)-as_date(df8$`Order Date`)->df8$"Order delay"
df8[,"Order delay"]


#C
"2009-1-14 18:30:00" |> as_date()
"2009-1-14 18:30:00" |> ymd_hms()

"24.10.1999"
strsplit("24.10.1999", split = "\\.") |> unlist() #or VVVVVVVVVVVV
strsplit("24.10.1999", split = ".",fixed=T)[[1]]
#stringr::str_split()
dmy_hm("1/1/2017 9:15", " ")
dmy_hm("1/1/2017 9:15")
stringr::str_split("9:15:00 5 Jan 2020"," ",n=2)-> alreadySplit
alreadySplit
paste(alreadySplit[[1]][2],alreadySplit[[1]][1]) |> dmy_hms()









