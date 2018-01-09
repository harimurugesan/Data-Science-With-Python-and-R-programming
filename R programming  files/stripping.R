as.factor(x$Age)
class(Titanic)
x <- as.data.frame(Titanic)
x
aggregate(x['Age'],by = x[c('Age','Sex')], FUN = length)
aggregate(x['Sex'],by = x[c('Sex','Age')], FUN = length)

a <- read.csv('Book1.csv') 
a1 <- read.csv('Book1.csv')
class(a)
a1$mark1<- gsub('\\$','',a1$mark1)
a1
a1$mark2<- sub('\\$','',a1$mark2)
a1$Percentage <- gsub('%','',a1$Percentage)
a1
class(a1$name)
a1$mark1 <- as.integer(a1$mark1)
a1$mark2 <- as.integer(a1$mark2)
b <- c('Total',sum(a1$mark1),sum(a1$mark2),as.integer((sum(a1$mark1)/sum(a1$mark2)) * 100))
b <- data.frame(name = 'Total',mark1 = sum(a1$mark1),mark2 = sum(a1$mark2),Percentage = as.integer((sum(a1$mark1)/sum(a1$mark2)) * 100) )
b
rbind(a1,b)
dim(a1)
class(iris$Species)
ir1 = iris
ir1
ir1[(ir1$Species == 'setosa' | ir1$Species == 'versicolor') & (ir1$Sepal.Length > 5),]
subset(ir1,((Species == 'setosa'| Species == 'versicolor') & Sepal.Length > 5))
write.csv(Titanic,'titanic.csv')
