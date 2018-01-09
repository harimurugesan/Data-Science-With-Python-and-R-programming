------------------------------------------------------------------------------------
  Extract and Replace Elements

x <- "R Tutorial"
sub("ut","ot",x)
gsub("ut","ot",x)

x <- "line 4322: He is now 25 years old, and weights 130lbs"
y <- gsub("\\d+","",x)
y
y <- gsub("[[:digit:]]","",x)
y
x <- "line 4322: He is now 25 years old, and weights 130lbs"
y <- gsub("[[:lower:]]","-",x)
y
x <- c("R Tutorial","PHP Tutorial", "HTML Tutorial")
x
x <- c("R Tutorial PHP Tutorial HTML Tutorial")
x
sub("Tutorial","Examples",x)
gsub("Tutorial","Examples",x)
sub
x <- c("This is a sentence about axis", "A second pattern is also listed here")
sub("is", "XY", x)
gsub("is", "XY", x)
\\\

\\\\
str <- c("Regular", "expression", "examples of R language")
x <- sub("x....s","",str)
x
x <- "line 4322: He is now 25 years old, and weights 130lbs";
x <- gsub("[[:digit:]]","",x)
x
x <- "line 4322: He is now 25 years old, and weights 130lbs";
x <- gsub("\\d+","",x)
x
Intro : Remove all punctutation expect comma,Remove all special character from string

Remove all punctutation expect comma
sample<-'This is just ,8 Number , and ? for _'
# gsub( "[^[:alnum:],]", "", "asdfasdf,aswer?123'" )
# gsub( "[^[:alnum:]?]", "", "asdfasdf,aswer?123'" )
# punct <- '[]\\?!\"\'#$%&(){}+*/:;,._`|~\\[<=>@\\^-]'
sub( ",", "", sample )
gsub( ",", "", sample )
Remove all special character from string
stringr package
gsub("[[:punct:]]"," ",sample)

\\\\
name<-'M.David'
name<-'45thh.uty'
name1<-gsub("\\.","",name)
name1
substr(name1,2,1000000)
\\\
string = c("G1:E001", "G2:E002", "G3:E003")
sub
sub(".*:", "", string)
string
str <- 'ABD - remove de punct, and dot characters.'
gsub('[:punct:]','',str)
gsub("[[:punct:]]", "", str)



x <- '"12,34,567"'
x
class(x)
x<-"12,34,567"
x1<-gsub(",","",x)
x1
y<-"$1,000"
y1<-gsub("\\$|,","",y)
y1
z<-"1.90%"
gsub("%","",z)

