# In this lesson, we will explore some basic building blocks of the R programming language.
# In its simplest form, R can be used as an interactive calculator. Type 5 + 7
# R simply prints the result of 12 by default. However, R is a programming language and
# often the reason we use a programming language as opposed to a calculator is to
# automate some process or avoid unnecessary repetition.

# In this case, we may want to use our result from above in a second calculation.
# Instead of retyping 5 + 7 every time we need it, we can just create a new variable
# that stores the result.

# The way you assign a value to a variable in R is by using the assignment operator,
# which is just a 'less than' symbol followed by a 'minus' sign. It looks like this: <-
  
# Think of the assignment operator as an arrow. You are assigning the value on the right
# side of the arrow to the variable name on the left side of the arrow.

# To assign the result of 5 + 7 to a new variable called x, you type x <- 5 + 7. This
# can be read as 'x gets 5 plus 7'.
x <- 5 + 7
# You ll notice that R did not print the result of 12 this time. When you use the
# assignment operator, R assumes that you dont want to see the result immediately, but
# rather that you intend to use the result for something else later on.

# store the result of x - 3 in a new variable called y.
Ans: y<-x-3

# Now, lets create a small collection of numbers called a vector. Any object that
# contains data is called a data structure and numeric vectors are the simplest type of
# data structure in R. In fact, even a single number is considered a vector of length
# one.

# The easiest way to create a vector is with the c() function, which stands for
# 'concatenate' or 'combine'. To create a vector containing the numbers 1.1, 9, and
# 3.14, type c(1.1, 9, 3.14). Try it now and store the result in a variable called z.
Ans=z<-c(1.1,9,3.14)


# You can combine vectors to make a new vector. Create a new vector that contains z,
# 555, then z again in that order. Dont assign this vector to a new variable, so that
# we can just see the result immediately.

Ans: c(z,555,z)

# Numeric vectors can be used in arithmetic expressions. Type the following to see what
# happens: z * 2 + 100.
Ans : z*2+100

# First, R multiplied each of the three elements in z by 2. Then it added 100 to each
# element to get the result you see above.

# Other common arithmetic operators are `+`, `-`, `/`, and `^` (where x^2 means 'x
#                                                               squared'). To take the square root, use the sqrt() function and to take the absolute
# value, use the abs() function.
# 
# Take the square root of z - 1 and assign it to a new variable called my_sqrt.

######################


my_sqrt<-sqrt(z-1)

# Before we view the contents of the my_sqrt variable, what do you think it contains?

# 1: a vector of length 3
# 2: a single number (i.e a vector of length 1)
# 3: a vector of length 0 (i.e. an empty vector)
# 
# As you may have guessed, R first subtracted 1 from each element of z, then took the
# square root of each element. This leaves you with a vector of the same length as the
# original vector z.
# 
# create a new variable called my_div that gets the value of z divided by my_sqrt
# my_div<-z/my_sqrt
# 
# Which statement do you think is true?
# 
# 1: my_div is a single number (i.e a vector of length 1)
# 2: my_div is undefined
# 3: The first element of my_div is equal to the first element of z divided by the first element of my_sqrt, and so on...
# 
# When given two vectors of the same length, R simply performs the specified arithmetic
# operation (`+`, `-`, `*`, etc.) element-by-element. If the vectors are of different
# lengths, R 'recycles' the shorter vector until it is the same length as the longer
# vector.
# 
# When we did z * 2 + 100 in our earlier example, z was a vector of length 3, but
# technically 2 and 100 are each vectors of length 1.
# 
# Behind the scenes, R is 'recycling' the 2 to make a vector of 2s and the 100 to make a
# vector of 100s. In other words, when you ask R to compute z * 2 + 100, what it really
# computes is this: z * c(2, 2, 2) + c(100, 100, 100).
# 
# To see another example of how this vector 'recycling' works, try adding
# c(1, 2, 3) + c(0, 10)
# 
# If the length of the shorter vector does not divide evenly into the length of the
# longer vector, R will still apply the 'recycling' method, but will throw a warning to
# let you know something fishy might be going on.
# 
# 
# c(1, 2, 3, 4) + c(0, 10, 100)

# ---------------------------------------------------------------------------------
#   ---------------------------------------------------------------------------------
#   ---------------------------Vector----------------------
#   Creating a Vector
x <- c(1, 5, 4, 9, 0)
typeof(x)

length(x)

x <- c(1, 5.4, TRUE, "hello")

x

typeof(x)
x <- 1:7
x

y <- 2:-2
y

seq(1, 3, by=0.2)          # specify step size



# Accessing Elements in Vector :
#   Using integer vector as index:
x

x[3]           # access 3rd element

x[c(2, 4)]     # access 2nd and 4th element

x[-1]          # access all but 1st element

x[c(2, -4)]    # cannot mix positive and negative integers

x[c(-2, -4)]

# Using logical vector as index :
  # x[c(TRUE, FALSE, FALSE, TRUE)]
  
x[x>3]  # filtering vectors based on conditions

x[x>0]

# Using character vector as index
# This type of indexing is useful when dealing with named vectors. We can name each elements of a vector.

x <- c("first"=3, "second"=0, "third"=9)
names(x)

x["second"]

x[c("first", "third")]
# Modifying a Vector
# We can modify a vector using the assignment operator. We can use the techniques discussed above to access specific elements and modify them. If we want to truncate the elements, we can use reassignments.

x

x[2] <- 4; x        # modify 2nd element

x[x>3] <- 5; x   # modify elements less than 0

x <- x[1:4]; x      # truncate x to first 4 elements

# Deleting a Vector
# We can delete a vector by simply assigning a NULL to it.


x
x <- NULL
x
x[3]

# -----------------------------------R Programming Matrix------------------------------
  # Creating a Matrix
x<-matrix(1:9, nrow=3, ncol=3)
# same result is obtained by providing only one dimension
x<-matrix(1:9, nrow=3)
x<-matrix(1:9, nrow=3, byrow=TRUE)

t1<-c(1,2,3)
t2<-c(4,5,6) 
cbind(t1,t2)

cbind(c(1,2,3),c(4,5,6))
c1<-c(1,2,3)
c2<-c(4,5,6)
cbind(c1,c2)
rbind(c(1,2,3),c(4,5,6))

# Accessing Elements in Matrix
x
x[1,c(2,3)]
x[c(1,2),c(2,3)]    # select rows 1 & 2 and columns 2 & 3

x[c(3,2),]    # leaving column field blank will select entire columns

x[,]    # leaving row as well as column field blank will select entire matrix

x[,1]
x[-1,]    # select all rows except first

# Modifying a Matrix
x[2,2] <- 10; x
x[x<5] <- 0; x
t(x)
cbind(x,c(1,2,3))

j
j<-rbind(x,c(1,2,3))
dim(j) <- c(6,2); x  # change to 3X2 matrix
dim(x) <- c(1,6); x # change to 1X6 matrix
x[1:4]
# -----------------------------------R Programming List------------------------------
  
  # Creating a List
# List can be created using the list() function.

x <- list("a"=2.5, "b"=FALSE, "c"=1:3)

x <- list(2.5,TRUE,1:3)
# Accessing Components in List
x[c(1:3)]    # index using integer vector
x<-x[-2]        # using negative integer to exclude second compon
x["a"]
typeof(x["a"])    # single [ returns a list
#Diff btwn [ and[[
x[["a"]]    # double [[ returns the content
typeof(x[["a"]])
# An alternative to [[, which is used often while accessing content of a list is the $ operator.
x$a    # same as x[["name"]]
x$a                  # partial matching, same as x$ag or x$age
# Modifying a List:
x[["a"]] <- "Clair";x
# Adding Component
x[["married"]] <- FALSE
# Deleting Component
x[["a"]] <- NULL
x$married <- NULL
                    
# -----------------------------------R Programming Data Frame------------------------------
                      
# Creating a Data Frame
                    
x <- data.frame("SN"=1:2,"Age"=c(21,15),"Name"=c("John","Dora"))
                    # stringsAsFactors=FALSE.
# Accessing Components in Data Frame :
# Accessing like a list
# We can use either [, [[ or $ operator to access columns of data frame.
x["Name"]
x$Name
x[["Name"]]
x[[3]]
x[3]
                                            
# Accessing like a matrix :
# in buile we have trees variables in R
  datasets::trees
trees[2:3,1:2]    # select 2nd and 3rd row
trees[trees$Height > 82,]    # selects rows with Height greater than 82
trees[10:12,2]
# rees[10:12,2, drop=FALSE]
# Deleting Component :
x$Age <- NULL
trees[-3,-2]<-0
                                            
# -----------------------------------R Programming Factor------------------------------
# General Definition :
                                              
# Factor is a data structure used for fields that takes only predefined, finite number of values (categorical data).
# For example, a data field such as marital status may contain only values from single, married, separated, divorced, or widowed.
# In such case, we know the possible values beforehand and these predefined, distinct values are called levels.
# Following is an example of factor in R.
                                            
x <- factor(c("single","married","married","single")); x
x <- factor(c("single","married","married","single"), levels=c("single","married","divorced")); x
                                            
# Factors are closely related with vectors. In fact, factors are stored as integer vectors. This is clearly seen from its structure.
x <- factor(c("single","married","married","single"))
str(x)
                                            
# We see that levels are stored in a character vector and the individual elements are actually stored as indices.
                                            
                                            
# ---------------------------------------------------------------------------------------------------
                                              
x <- 6
n <- 1:4
let <- LETTERS[1:4]
df <- data.frame(n, let)
                                            
# List currently defined variables
ls()
                                            
# Check if a variable named "x" exists
exists("x")
                                            
# Check if "y" exists
exists("y")
                                            
# Delete variable x
rm(x)
                                            
str(df)
                                            
# Length probably doesn't give us what we want here:
length(df)
                                            
# Number of rows
nrow(df)
                                            
                                            
# Number of columns
ncol(df)
                                            
                                            
# Get rows and columns
dim(df)
                                            
# ---------------------------------------------------------------------------------
                                              
# Indexing into a Data structure
# Problem
                                            
# You want to get part of a data structure.
                                            
# Solution
                                            
# Elements from a vector, matrix, or data frame can be extracted using numeric indexing, or by using a boolean vector of the appropriate length.
v <- c(1,4,4,3,2,2,3)
v[c(2,3,4)]
                                            
v[2:4]
                                            
                                            
v[c(2,4,3)]
                                            
                                            
# With a data frame:
                                              
# Create a sample data frame
data <- read.table(header=T, text='
subject sex size
1   M    7
2   F    6
3   F    9
4   M   11
')
                                            
# Get the element at row 1, column 3
data[1,3]
                                            
data[1,"size"]
                                            
                                            
                                            
# Get rows 1 and 2, and all columns
data[1:2, ]
                                            
data[c(1,2), ]
                                            
                                            
# Get rows 1 and 2, and only column 2
data[1:2, 2]
                                            
data[c(1,2), 2]
                                            
# Get rows 1 and 2, and only the columns named "sex" and "size"
data[1:2, c("sex","size")]
                                            
data[c(1,2), c(2,3)]
                                            
# Indexing with a boolean vector
                                            
# With the vector v from above:
                                              
v > 2
                                            
v[v>2]
                                            
v[ c(F,T,T,T,F,F,T)]
                                            
# With the data frame from above:
                                              
# A boolean vector
data$subject < 3
                                            
data[data$subject < 3, ]
                                            
data[c(TRUE,TRUE,FALSE,FALSE), ]
                                            
# It is also possible to get the numeric indices of the TRUEs
which(data$subject < 3)
                                            
v
                                            
# Drop the first element
v[-1]
                                            
# Drop first three
v[-1:-3]
                                            
# Drop just the last element
v[-length(v)]
                                            
                                            
                                            
# --------------------------------------------------------------------------------
1:20
# We could also use it to  create a sequence of real numbers. For example,
# try 
pi:10
                                            
15:1
# In the case of an operator like the colon used above, you must enclose the symbol in backticks like this: ?`:`
                                            
# seq() function serves this purpose
seq(1, 20)
seq(0, 10, by=0.5)
my_seq<-seq(5, 10, length=30)
my_seq
# One more function related to creating sequences of numbers is rep()
rep(0, times = 40)
# If instead we want our vector to contain 10 repetitions of the vector (0, 1, 2), wecan do rep(c(0, 1, 2), times = 10)
rep(c(0, 1, 2), each = 10)
                                            
                                            