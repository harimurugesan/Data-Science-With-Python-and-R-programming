dates <- seq(as.POSIXct("2017-10-01"), by=("+1 day"), length.out=31)
dates
a1 <- data.frame(dates,sales = 100:130)
a1
names(a1)
a1$days <- ifelse((weekdays(a1$dates) %in% c('Saturday' ,'Sunday')),'weekends','weekdays')
class(a1$dates)
weekdays(a1$dates[1])
businessdays <- 0
weekends <- 0
# """for (i in 1:length(a1$dates)){ifelse((weekdays(a1$dates[i]) %in% c('Saturday' ,'Sunday')),weekends <- weekends + 1,businessdays <- businessdays + 1)}
#   
# print(businessdays)
# print(weekends)"""
result <- data.frame(type =c('businessdays','weekends'),total = c(businessdays,weekends))
result
ag <- aggregate(a1['sales'],by = a1[c('days')],FUN = sum)
ag
di <- c(4,5,8)
di <- as.data.frame(di)
di
temp <- NULL
temp <- as.data.frame(temp)
temp
nrow(di)
rm(i)
for(i in 1:nrow(di)){
  temp <- subset(mtcars,cyl == di[i])
  temp <- rbind(temp,temp)
  
}
temp
mtcars
getwd()
train <- read.csv('train.csv')
train <- read.csv('Input.csv',skip = 2)
a <- c(40,60,69,55,45)
ma <- max(a)
ma

