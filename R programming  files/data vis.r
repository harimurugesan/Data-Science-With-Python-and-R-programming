  mammals
  library(MASS)
  mammals
# data , asthetics , geometries are the three gramatically essential elements
#data -> "the dataset being plotted "
#asthetics -> "the scales on to which we map our data"
#geometries -> "The visual element used for our data"

  
#other gramatical elements in ggplots are:
    """Facets -> plotting small multiples
       Statistics -> Representation of our data to aid understanding
       Coordinates -> The space on which the data is being plotted
       themes -> All non data ink"""

iris
  library(ggplot2)
ggplot(iris,aes(x = Species,y = Sepal.Length)) + geom_point(position = position_jitter(0.2))
Titanic
dim(Titanic)
View(Titanic)
titanic <- read.csv("D:\\train.csv",stringsAsFactors = F)
titanic
str(titanic)


titanic$Pclass <- as.factor(titanic$Pclass)
titanic$Survived <- as.factor(titanic$Survived)
titanic$Sex <- as.factor(titanic$Sex)
titanic$Embarked <- as.factor(titanic$Embarked)

ggplot(titanic, aes(x = Survived)) + 
  geom_bar()

ggplot(titanic, aes(x = Pclass)) + 
  geom_bar()
sales <- c(300,400,567,577)
country <- c('uk','us','india','japan')
pie(sales)
pie(sales,labels = country)
class(Titanic)
regionalsales <- data.frame(country,sales)
regionalsales
install.packages('plotrix')
library(plotrix)
pie3D(sales,labels = country,main="Sales per region")
library(ggplot2)
bar<-ggplot(regionalsales,aes(x="",y=sales,fill=country))+geom_bar(width=7,stat="identity")
bar
pie<-bar+coord_polar("y",start=0)+scale_fill_brewer(palette = "Dark2")+theme_minimal()
pie
plot(cars)
