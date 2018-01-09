data <- read.table(header=T, text='
                   subject sex size
                   1   M    7
                   2   F    6
                   3   F    9
                   4   M   11
                   ')
data
data[,c(1,2)]
a <- data.frame(name=c("A", "B"), b=1:2)
a
b <- data.frame(a=1:2, b=1:2)
b
rownames(b) = a$name
b
rownames(b)[1] <- 'AA'
b
df<-data.frame("hi","bye")
df
names(df)<-c("hello","goodbye")
df
de<-data.frame("hola","ciao")
names(de)<-c("hello","goodbye")
de
n1 = rbind(df,de)
n1
dc <-data.frame('hac','')
names(dc) <- c('hello','goodbye')
dc
rbind(n1,dc)
mtcars
new <- subset(mtcars,select = c(new,mpg,cyl,drat))
a <- c('total',sum(new$mpg),sum(new$cyl),sum(new$drat))
a
new <- rbind(new,a)

new <- new[]
class(a)
class(mtcars$mpg)
class(mtcars$cyl)
class(mtcars$drat)
sum(mtcars$mpg)
total <- data.frame(mpg = sum(mtcars$mpg),cyl = sum(mtcars$cyl),drat = sum(mtcars$drat),disp = '' ,hp = '', wt = '', qsec = '', vs = '',am = ''  ,gear = '', carb = '', new='Total')
total
dim(new)
#colSums(mtcars$cy1,dims = 1)
rownames(new)[33] <- 'total'
new1 <- rbind(mtcars,total)
new
new$new <- NULL
new1 <- new1[,c('new','mpg','cyl','drat')]
new1
new1$new <- NULL
str(new)
new$mpg <- as.numeric(new$mpg)
new$cyl <- as.numeric(new$cyl)
new$drat <- as.numeric(new$drat)
a <- as.data.frame(c(sum(new$mpg),sum(new$cyl),sum(new$drat)))
a
names(new)
names(new) <- names(a)
subset(new1,cyl == 6,select = -cyl)
View(Titanic)
str(Titanic)
rownames(Titanic)
findOorE(9)
