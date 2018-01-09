# Transpose - reversing row and column

# Use the t() function to transpose a matrix or a data frame. In the later case, rownames become variable (column) names.
# example using built-in dataset 
mtcars
cc <- t(mtcars)
cc
# Aggregating Data
# It is relatively easy to collapse data in R using one or more BY variables and a defined function.
aggregate(x, by, FUN)
# while doing following code by column names(based upon which column you are aggregating) get changed
aggregate(mtcars,by=list(mtcars$cyl),FUN=sum)
(or)
#while doing following code by column keep as it is
aggregate(mtcars,by=mtcars[c("cyl")],FUN = sum)

#instead of checking whole dataframe if you want to aggregate for some columns
aggregate(mtcars[c("mpg","gear","disp")],by=mtcars[c("cyl")],FUN = sum)

# $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

data <- read.table(header=TRUE, text='
 subject sex condition before after change
       1   F   placebo   10.1   6.9   -3.2
                   2   F   placebo    6.3   4.2   -2.1
                   3   M   aspirin   12.4   6.3   -6.1
                   4   F   placebo    8.1   6.1   -2.0
                   5   M   aspirin   15.2   9.9   -5.3
                   6   F   aspirin   10.9   7.0   -3.9
                   7   F   aspirin   11.6   8.5   -3.1
                   8   M   aspirin    9.5   3.0   -6.5
                   9   F   placebo   11.5   9.0   -2.5
                   10   M   placebo   11.9  11.0   -0.9
                   11   F   aspirin   11.4   8.0   -3.4
                   12   M   aspirin   10.0   4.4   -5.6
                   13   M   aspirin   12.5   5.4   -7.1

                   14   M   placebo   10.6  10.6    0.0
                   15   M   aspirin    9.1   4.3   -4.8
                   16   F   placebo   12.1  10.2   -1.9
                   17   F   placebo   11.0   8.8   -2.2
                   18   F   placebo   11.9  10.2   -1.7
                   19   M   aspirin    9.1   3.6   -5.5
                   20   M   placebo   13.5  12.4   -1.1
                   21   M   aspirin   12.0   7.5   -4.5
                   22   F   placebo    9.1   7.6   -1.5
                   23   M   placebo    9.9   8.0   -1.9
                   24   F   placebo    7.6   5.2   -2.4
                   25   F   placebo   11.8   9.7   -2.1
                   26   F   placebo   11.8  10.7   -1.1
                   27   F   aspirin   10.1   7.9   -2.2
                   28   M   aspirin   11.6   8.3   -3.3
                   29   F   aspirin   11.3   6.8   -4.5
                   30   F   placebo   10.3   8.3   -2.0
                   ')

# Get a count of number of subjects in each category (sex*condition)
cdata <- aggregate(data["subject"], by=data[c("sex","condition")], FUN=length)
data
cdata

# Rename "subject" column to "N"


cdata.means <- aggregate(data[c("before","after","change")], 
                         by = data[c("sex","condition")], FUN=mean)
cdata.means

cdata.sd <- aggregate(data["change"],
                      by = data[c("sex","condition")], FUN=sd)

cdata.means <- aggregate(data[c("before","after","change")], 
                         by = data[c("sex","condition")],
                         FUN=mean, na.rm=TRUE)
cdata.means <- aggregate(data, 
                         by = data[c("sex","condition")],
                         FUN=mean, na.rm=TRUE)
# $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
# Reshape Package :
  # restructuring and aggregating datasets
# Basically, you "melt" data so that each row is a unique id-variable combination.
# Then you "cast" the melted data into any shape you would like. Here is a very simple example.

# melt takes wide-format data and melts it into long-format data.

# cast takes long-format data and casts it into wide-format data.

# ID variables are the variables that identify individual rows of data.

mydata<-read.table(header=T,text='id  time	x1	x2
1	1	5	6
1	2	3	5
2	1	6	1
2	2	2	4
')
mydata
m1<-c(1,1,5,4)
mydata<-rbind(mydata,m1)

library(reshape)
mdata <- melt(mydata, id=c("id","time"))
mdata
cast(mdata,fun.aggregate = sum)
# cast the melted data
# cast(data, formula, function) 
subjmeans <- cast(mdata, fun.aggregate = sum)

# $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
# If we want aggregation for all column we can do as per the below mentioned 
a1<-melt(mtcars,id=c('cyl'))
a2<-cast(a1,fun.aggregate = sum)

# If you want aggregation for some column we can do as per the below mentioned
a1<-melt(mtcars,id="cyl",measure="mpg")
a2<-cast(a1,fun.aggregate = sum)

# $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
names(airquality) <- toupper(names(airquality))
#head means default shows first six rows
head(airquality)
aql <- melt(airquality) # [a]ir [q]uality [l]ong format
head(aql)
aql <- melt(airquality, id = c("month", "day"))


f<-cast(aql,fun.aggregate = sum)
# $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
# $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
data <- read.table(header=T, text='
 subject sex  size
    1 f  10
2 f 40

3 f 10
4 f 40

1 m 30
2 m 56
3 m 53
4 m 90
2 f  4
3 f 45')
                   
library(reshape2)
install.packages('reshape')
library(reshape)
str(data)

data_m<-melt(data,id.vars=c('condition','sex'))
dat<-cast(data_m,fun.aggregate = sum)
dat
dat<- aggregate(data[c('after')],by = data[c('sex')],FUN = sum)
dat
data

# $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
x = data.frame(subject = c("John", "Mary"), 
               time = c(1,1),
               age = c(33,NA),
               weight = c(90, NA),
               height = c(2,2))

x
molten = melt(x, id = c("subject", "time"))
molten = melt(x, id = c("subject", "time"), na.rm = TRUE)
m<-melt(x,id.vars=c("subject","time"))
m1<-cast(m,fun.aggregate = sum)
m1
# $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
#Command to remove variable stored in your current R Sessions
rm(list=ls())
# Reshape2 :
  # ----------
  data<-read.table(header=T,text="
                   group gender order
                   A M 1
                   B F 1
                   C M 2
                   D F 2
                   E M 2
                   F F 1
                   G M 2
                   A M 2
                   B F 1
                   C M 2
                   D F 1
                   E M 1
                   F F 1
                   A F 1
                   ")
data
dcast(data,group  ~ gender,value.var = "order",sum)
dcast(mtcars, am+vs ~ cyl, value.var = "mpg")

