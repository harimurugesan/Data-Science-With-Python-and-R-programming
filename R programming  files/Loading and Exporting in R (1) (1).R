getwd()
setwd("D:\\")
/* Loading text file */
data<-read.table("a.txt",header=T)
data
/* Loading Csv file in R*/
data <- read.table("sample100.csv",
                   header=T,
                   sep=","         # use "\t" for tab-delimited files
)
(or)
data<-read.csv("sample100.csv")
data
(or)
data<-read.csv2("sample100.csv",sep=",")
data
data<-read.csv("sample100.csv",skip=2,stringsAsFactors = F)
str(data)
data$name<-as.character(data$name)
data<-read.csv("sample100.csv",skip=2,stringsAsFactors = F)

data
# By default, strings in the data are converted to factors. If you load the data below with read.csv, then all the text columns will be treated as factors, even though it might make more sense to treat some of them as strings. To do
# this, use stringsAsFactors=FALSE:
data <- read.csv("sample100.csv", stringsAsFactors=FALSE)  
  
data<-read.csv('C:\\Users\\Dell\\Desktop\\sample.csv',skip=3)
data<-read.csv(file.choose())


data<-read.csv("clipboard",sep="\t")
data
# Excel files

#Install Java 1.6 software
#Install and load rJava package
#Install and load xlsx package
install.packages("rJava")

require(rJava)
(or)
library(rJava)
install.packages("readxl")
library(readxl)
dataa <-read_xlsx("D:\\r files\\sample2.xlsx",sheet="sheet1")
dataa <- read_xlsx("D:\\r files\\new1.xlsx")
dataa
dataa <-read_xlsx("D:\\r files\\new1.xlsx",sheet="Sheet2")
dataa
dataa <-read_xlsx("D:\\r files\\new1.xlsx",sheet="Sheet3")
dataa
2#> Error in library(gdata): there is no package called 'gdata'
dataa <- read_xlsx("sample2.xlsx",sheetName="EMP")
# Writing to a delimited text file

# The easiest way to do this is to use write.csv(). By default, write.csv() includes row names, but these are usually unnecessary and may cause confusion.
library(RMySQL)
con <- dbConnect(MySQL(),user='enter db user  name',password='enter db password',host='enter host name',dbname='enter db name')
data<-dbGetQuery(con,paste('select * from db name.table name'))


# A sample data frame
data <- read.table(header=TRUE, text='
                   subject sex size
                   1   M    7
                   2   F    NA
                   3   F    9
                   4   M   11
                   ')
data
data[,c(4,1)]

write.csv(data,'dinesh1.csv')
write.csv(dataa,"Mine2.csv")
# Write to a file, suppress row names
write.csv(dataa, "zdata.csv", row.names=FALSE)


# Same, except that instead of "NA", output blank cells
write.csv(data, "data.csv", row.names=FALSE, na="")
write.xlsx(dataa,"ycsc.xlsx")
# Use tabs, suppress row names and column names
write.table(data, "data1.csv", sep="\t", row.names=FALSE, col.names=FALSE) 
# \\

# saving R data format
# Save in a text format that can be easily loaded in R
dump("data", "besant.Rdmpd")
dump("mtcars","bes.Rdmpd")
source("besant.Rdmpd")
# Can save multiple objects:
dump(c("data", "mtcars"), "data.Rdmpd")

# To load the data again: 
source("data.Rdmpd")
# \\
save(mtcars, file="data1.RData")

# To load the data again:
load("data1.RData")
# \\

To find sum of all column use:
  ######Please make sure mtcars is the inbuild dataset in R studio ######
  ####### TO check inbuild data set type data()############
  


colSums(mtcars) # Make sure all columns are numeric
Likewise for rowSums(mtcars) will calculate sum based upon rows in D.f

To find sum of particular column use
sum(mtcars$mpg) # Likewise for mean,Sd,min,max,mean


a<-read.table(header=T,text="
              Name age
              A 34
              B 34")
b<-read.table(header=T,text="
              Emp age
              A 34
              B 34")

To combine above data frame by union wise use cbind,
cbind(a,b)

1To append the above mentioned datasets use rbind
rbind(a,b)
names(a)
names(b)
names(a)=names(b)
rbind(a,b)
Error will occur beacuse of column names are not matching,
So change the column names of any data set

To get the column name for Data frame
use names(a)(or)colnames(a).
So,changing names(a)=names(b),Indicate change left side value to right sidebarLayout(
Changing column names of b to column names of b,then do
rbind(a,b),it will append the result

mtcars$new<-rownames(mtcars)
str(mtcars)
colSums(mtcars)
i1<-sapply(mtcars,is.character)
i2<-as.data.frame(mtcars[,i1])
i2
i1
mtcars[,i1]
