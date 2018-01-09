input <- read.csv("D:\\r files\\Input.csv",stringsAsFactors = F,skip = 2)
input
names(input)
un <- unique(input)
names(un) <- c('model','target','sales')
un$target <- gsub('\\$','',un$target)
un$target <- gsub(',','',un$target)
un <- un[grep("American|Volkswagen|FIAT|Keyes|Motorworld|Tom Wood|Brien|Serra|Nick",un$model),]
str(un)
un$target <- as.numeric(un$target)
un$sales <- as.integer(un$sales)
un
un$sales <- un$sales / 10
un
i1 = 1
"""for(i in un$target){
  if( i < 1000){
    un$status[i1]<- 'Alert'
  }
  if(i > 1000){
    un$status[i1]<- 'Ideal'
  }
  i1 <- i1 + 1

}"""
un$status <- ifelse(un$target < 1000,'Alert','Ideal')
library(plyr)
un <- arrange(un,model)
un

mynum <- c(4,5,6,7,7,7,8,8,8,8,8,3,4,6,7,7,5,4,3,3,3,3,3,3,3,3)
for (i in 1:length(mynum)){
     if (i %% 4 == 0){
       mynum[i] <- '-'
       
     }
}
paste(mynum,collapse = '')

in1 <- read.csv(file.choose())
in1 <- read.csv('D:\\r files\\input123.csv',stringsAsFactors = F)
in1
names(in1)
