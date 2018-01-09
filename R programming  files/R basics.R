a<-4
is.numeric(a)
class(a)
a<-c(4,6)
a[1]
a[2]

a<-"4"
class(a)
a<-c("4","a")


a<-T
a
a<-F
a
b<-c("m","f","m","f","m","m")
a3 <- as.factor(b)
a3
class(a3)

a<-c("m","f","m","f","m")
a1<-as.factor(a)
a1
class(a1)
2 * 4
2 ** 7
7** 2
ls()
a <- '2'
b <- 'one'
as.numeric(a)
as.factor(b)
as.numeric("54.76")
as.logical(099)
as.logical('i')
as.logical(0)
a<-c(2,3,4)
length(a)
install.packages("ggplot2")
require('ggplot2')
a<- c(50,7,0)
names(a) <- c('m','t','d')
a
class(a)
a['m']
install.packages("googleVis")
require("googleVis")
library('ggplot2')
qplot(displ,hwy,data=mpg,colour=drv)
