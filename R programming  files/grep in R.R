data1<-read.table(header=T,text="
                  Names
                  A
                  B")
data2<-read.table(header=T,text="
                  Student
                  c
                  D")
data1
data2
cbind(data1,data2)
rbind(data1,data2)

rep(1, 50)

rep(F, 20)

rep(1:5, 4)

rep(1:5, each=4)

str <- c("Regular", "expression", "examples of R language")
x <- grep("ex",str,value=T)
x 
# grep(value = TRUE) returns a character vector containing the selected elements of x (after coercion, preserving names but no other attributes).
x <- grep("ex",str,value=T)
x
# [1] "expression" "examples of R language" 

 # grepl returns a logical vector (match or not for each element of x).
x <- grepl("ex",str)
x
# [1] FALSE  TRUE  TRUE


# grep a word exactly

varnames=c("nitrogen", "dissolved organic nitrogen", "nitrogen fixation", "total dissolved nitrogen", "total nitrogen")

grep("^nitrogen$",varnames,value=TRUE)
grep('nitrogen',varnames,value = T)
x <- c("G448", "G459", "G479", "G406")  
y <- c(1:4)
My.Data <- data.frame (x,y)
My.Data
subset (My.Data, x=="G45*")
grep("^G45", My.Data$x)
My.Data[grep("G45", My.Data$x), ]
My.Data[grepl("G45", My.Data$x), ]

subset(My.Data, grepl("G45", My.Data$x))
# To find exact match
string = c("apple", "apples", "applez")
grep("apple", string,value=T)
# Use word boundary \b which matches a between a word and non-word character,

 string = c("apple", "apples", "applez")
 grep("\\bapple\\b", string,value=T)
 
 # For exact matching, you will be better off using ==. It should be faster than grep() and is (obviously) also much easier.
 
 which(string == "apple")
 
 testLines <- c("I don't want to match this","This is what I want to match")
  grepl('is',testLines)
  grepl(' is',testLines)
  grep("\\<is\\>", c("this", "who is it?", "is it?", "it is!", "iso"))
  
  tmp = structure(list(Name = structure(c(6L, 8L, 9L, 7L, 2L, 3L, 10L, 
                                          1L, 5L, 4L), .Label = c("Alan", "Bob", "bob smith", "Frank", 
                                                                  "John", "Mary Anne", "mary jane", "Mary Smith", "Potter, Mary", 
                                                                  "smith, BOB"), class = "factor"), Age = c(31L, 23L, 23L, 55L, 
                                                                                                            32L, 36L, 45L, 12L, 43L, 46L), Height = 1:10), .Names = c("Name", 
                                                                                                                                                                      "Age", "Height"), class = "data.frame", row.names = c(NA, -10L
                                                                                                                                                                      ))
  tmp
  class(tmp)
  tmp[grep("mary|bob",tmp$Name,ignore.case = T),]
  (or)
  mynames<-c("mary","bob")
  tmp[grep(paste(mynames), tmp$Name, ignore.case=TRUE),]
  tmp[grep(mynames, tmp$Name, ignore.case=T),]
  
  a <- data.frame( x =  c('red','blue1','blue2', 'red2'))
  a
  result <- a[ grep("blue", a$x) , ]
  result
  result <- a[ grepl("blue", a$x) , ]
  result
  subset(a, grepl("blue", a$x))
  
  vec <- c(" ", "hi", "Chicago", "new york", "New_York")
  vec
  grep("^[a-zA-Z]*$", vec,value=T)
  
  grep("[[:punct:]]",vec,value =  T)
  cities <- c("Los Angeles", "New York", "Chicago", "Aix-en-Provence")
  grep("^[a-zA-Z]*$", cities,value=T)
  
  
  #Adding New column
  mtcars$new1<-rownames(mtcars)
  #Extracting mazda from new1 column
  mtcars[grepl("Mazda",mtcars$new),]
  #Find and create based upon one column
  mtcars$new2[grepl('Mazda',mtcars$new1)]<-'Mazda'
  
