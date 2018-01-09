v <- c(1,4,4,3,2,2,3)
v<3
v[v<3]
(or)
subset(v, v<3)

v[v<3]



# Another vector
t <- c("small", "small", "large", "medium")

# Remove "small" entries
subset(t, t!="small")

t[t!="small"]

v[v<3] <- 9
v

subset(v, v<3) = 9

# A sample data frame
data <- read.table(header=T, text='
 subject sex size
                   1   M    7
                   2   F    6
                   3   F    9
                   4   M   11
                   ')
sum(data$size)
class(data$size)
data[1,]

data[,1]
data[c(1,2),]
subset(data, subject < 3)
data[data$subject < 3,c('sex','size')]
# Subset of particular rows and columns
subset(data, subject < 3, select = -subject)
subset(data, subject < 3, select = c(sex,size))
subset(data, subject < 3, select = sex:size)
data[data$subject < 3, c("sex","size")]
data[data$subject < 3, c(2,3)]
subset(data, subject < 3, select = c(2,3))
data

# Logical AND of two conditions
subset(data, subject < 3  &  sex=="M")
data[data$subject < 3  &  data$sex=="M", ]
data[data$subject < 3  &  data$sex=="M",c("subject","size") ]



# Logical OR of two conditions
subset(data, subject < 3  |  sex=="M")
data[data$subject < 3  |  data$sex=="M", ]



subset(data,subject==c(1,3))
data
subset(data,subject %in% c(1,3),select = c(1,2))

# Subset if elements are in another vector
subset(data, subject %in% c(1,3))
data[data$subject %in% c(1,3), ]

names(data)
#changing column name
names(data)<-c("a","b","c")
data
names(data)[names(data)=="b"]<-"d"
data
subset(data,select=c(c,a,d))
data[,c(3,1,2)]
data[,c("c","a","d")]
subset(data,select=c("a","d"))

data[,c(3,1,2)]

data$c<-NULL
(or)
data<-subset(data,select=-(size))
data

#Converting variale type
data$d<-as.character(data$d)

c<-4
as.character(c)

c<-"a"
as.numeric(c)

c<-10:14
c
class(c)
as.character(c)
t<-as.factor(c)
t
as.numeric(t)
as.numeric(as.character(t))

data<-read.table(header=T,text="
                 Name Age
                 A 23")
data2<-read.table(header=T,text="
                 Student Number
                 B 32")
data3<-read.table(header=T,text="
                 Name Age
                 B 32")
data4<-read.table(header=T,text="
                 Name Number
                  B 32")
data
data2
data3
data4
cbind(data,data2)
rbind(data,data3)
cbind(data,data4)
rbind(data,data2)
names(data)<-names(data2)
mtcars

mtcars$new1<-rownames(mtcars)
mtcars

i<-sapply(mtcars, is.numeric)
i
mtcars[,i]
