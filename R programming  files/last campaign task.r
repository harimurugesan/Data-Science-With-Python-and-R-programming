file <- read.csv('D:\\File.csv',skip = 4,,stringsAsFactors = F)
head(file)
# this is used to read excel file without using rjava
library(readxl)
file2 <- read_xlsx('D:\\unique_list.xlsx',sheet='Sheet1')
file2 <- as.data.frame(file2)
head(file2)
# since the both dataframe having the campaign name as commom we can merge and that do the required operation
newf = merge.data.frame(file,file2,by = c('Campaign'))
newf
# we have to do some data cleaning work inorder to do some math
newf$CTR <- gsub('%','',newf$CTR)
newf$CTR <- gsub(',','',newf$CTR)
#when you do sum on "NA" and a number result is NA
56 + NA
#therefore omit the missing values
newf <- na.omit(newf)
str(newf)
newf$CTR <- as.numeric(newf$CTR)
str(newf)
newf_sum <- aggregate(subset(newf,select = Impressions:Average.CPC ), 
                         by = newf[c("type")], FUN=sum)
new_sum
newf_mean <- aggregate(subset(newf,select = Spend:Conversions ), 
                       by = newf[c("type")], FUN = mean)
newf_mean



a1 <- data.frame(a=4:7,b = 5:8,c = 14:17,d=6:9)
a1
a1list <- c(names(a1))
a2 <- data.frame(a=c(4,5,6,7),d=6:9)
a2list <- c(names(a2))
a3 <- merge.data.frame(a1,a2)
a3
a4<- c()
a4
a1list
num <- 1
for (ch in a1list){
  if(ch %in% a2list){
    a4[num] <- ch
  }
  num <- num + 1
  
  
  
}
a4<- na.omit(a4)
class(a4)
a4 <- as.character(a4)
a4
a4 <-as.factor(a4)
a4
a3
subset(a3,select = -c(a4))

