# Make up a randomly ordered vector
v <- sample(101:110)
v
# Sort the vector
sort(v)
# Reverse sort
sort(v, decreasing=TRUE)
df <- data.frame (id=1:4,
                  weight=c(20,27,24,22),
                  size=c("small", "large", "medium", "large"))
df
library(plyr)
# Sort by weight column. These have the same result.
arrange(df, weight)       # Use arrange from plyr package
  df[ order(df$weight), ]   # Use built-in R functions
# Sort by size, then by weight
arrange(df, size, weight)         # Use arrange from plyr package
df[ order(df$size, df$weight), ]  # Use built-in R functions

# Reverse sort by weight column. These all have the same effect:
arrange(df, -weight)                      # Use arrange from plyr package
df[ order(df$weight, decreasing=TRUE), ]  # Use built-in R functions
df[ order(-df$weight), ]                  # Use built-in R functions


# Sort by size (increasing), then by weight (decreasing)
arrange(df, size, -weight)         # Use arrange from plyr package
df[ order(df$size, df$weight), ]  # Use built-in R functions

______________________________
                        Finding and removing duplicate records
Problem

You want to find and/or remove duplicate entries from a vector or data frame.

Solution

With vectors:

# Generate a vector 
set.seed(158)
x <- round(rnorm(20, 10, 5))
x
duplicated(df)
df[duplicated(df),]
# The values of the duplicated entries
# Note that '6' appears in the original vector three times, and so it has two
# entries here.
x[duplicated(x)]


# Duplicated entries, without repeats
unique(x[duplicated(x)])


# The original vector with all duplicates removed. These do the same:
unique(x)
(or)
x[!duplicated(x)]

df <- read.table(header=TRUE, text='
 label value
     A     4
     B     3
     C     6
     B     3
     B     1
     A     2
     A     4
     A     4
')
df
df[duplicated(df),]
unique(df[duplicated(df),])
unique(df)
df[!duplicated(df,'label'),]
_____________________________________________________________________________________________________


                                        Recoding Data

Problem

You want to recode data or calculate new data columns from existing ones.

Solution

The examples below will use this data:
  
  
data <- read.table(header=T, text='
 subject sex control cond1 cond2
       1   M     7.9  12.3  10.7
       2   F     6.3  10.6  11.1
       3   F     9.5  13.1  13.8
       4   M    11.5  13.4  12.9
')

Recoding a categorical variable

The easiest way is to use revalue() or mapvalues() from the plyr package.
This will code M as 1 and F as 2, and put it in a new column.
Note that these functions preserves the type: if the input is a factor, the output will be a factor; and if the input is a character vector, the output will be a character vector.

library(plyr)

# The following two lines are equivalent:
data$scode <- revalue(data$sex, c("M"="1", "F"="2"))
data$scode <- mapvalues(data$sex, from = c("M", "F"), to = c("1", "2"))
data
#>   subject sex control cond1 cond2 scode
$#> 1       1   M     7.9  12.3  10.7     1
#> 2       2   F     6.3  10.6  11.1     2
#> 3       3   F     9.5  13.1  13.8     2
#> 4       4   M    11.5  13.4  12.9     1

# data$sex is a factor, so data$scode is also a factor


# If you don't want to rely on plyr, you can do the following with R's built-in functions:
  
  data$scode[data$sex=="M"] <- "1"
data$scode[data$sex=="F"] <- "2"

# Convert the column to a factor
data$scode <- factor(data$scode)
data
#>   subject sex control cond1 cond2 scode
#> 1       1   M     7.9  12.3  10.7     1
#> 2       2   F     6.3  10.6  11.1     2
#> 3       3   F     9.5  13.1  13.8     2
#> 4       4   M    11.5  13.4  12.9     1


Another way to do it is to use the match function:
  
  oldvalues <- c("M", "F")
newvalues <- c("g1","g2")  # Make this a factor

data$scode <- newvalues[ match(data$sex, oldvalues) ]
data
#>   subject sex control cond1 cond2 scode
#> 1       1   M     7.9  12.3  10.7    g1
#> 2       2   F     6.3  10.6  11.1    g2
#> 3       3   F     9.5  13.1  13.8    g2
#> 4       4   M    11.5  13.4  12.9    g1


Recoding a continuous variable into categorical variable

Mark those whose control measurement is <7 as "low", and those with >=7 as "high":
  
  data$category[data$control< 7] <- "low"
data$category[data$control>=7] <- "high"

# Convert the column to a factor
data$category <- factor(data$category)
data
#>   subject sex control cond1 cond2 scode category
#> 1       1   M     7.9  12.3  10.7    g1     high
#> 2       2   F     6.3  10.6  11.1    g2      low
#> 3       3   F     9.5  13.1  13.8    g2     high
#> 4       4   M    11.5  13.4  12.9    g1     high
With the cut function, you specify boundaries and the resulting values:
  
  data$category <- cut(data$control,
                       breaks=c(-Inf, 7, 9, Inf),
                       labels=c("low","medium","high"))
data
#>   subject sex control cond1 cond2 scode category
#> 1       1   M     7.9  12.3  10.7    g1   medium
#> 2       2   F     6.3  10.6  11.1    g2      low
#> 3       3   F     9.5  13.1  13.8    g2     high
#> 4       4   M    11.5  13.4  12.9    g1     high

By default, the ranges are open on the left, and closed on the right, as in (7,9]. To set it so that ranges are closed on the left and open on the right, like [7,9), use right=FALSE.

Calculating a new continuous variable
Suppose you want to add a new column with the sum of the three measurements.

data$total <- data$control + data$cond1 + data$cond2
data



mtcars$Names<-rownames(mtcars)
