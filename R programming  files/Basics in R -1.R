#################Data Types and Data Structue##############################
# Numeric:
  # In following code ,what it explain is assigning 2 to "a" variable(right side of 2 value is going to assign in left side "a" variable)
a<-2
# To check type,
class(a)
# You can also store as a=2,but professionally we are go with a<-2
# Make sure R is case sensitive 
# If you want to store more than one element ,make sure to add "C"  symbol as 
a<-c(2,3)
# In the above code, a variable contain two element 2 and 3
# Check how many element in a variable 
length(a)
class(a)
# In R, element position start with 1
# If we want to get first element separately, try with
a[1]
# ------------------------------------------------------------------------------------------------------------------------------------------
  # Character :
  # Like Numeric,if it put everything in quotes either single or double then it will become as character
a<-"3"
a<-'a'
A<-c("a","b")
class(A)
N<-c(1,2,3,"4",5)
N
# In the above code , n variable contain five elements .Within that "4" is character.If variable contain numeric and character ,then everything becomes change into character
# ------------------------------------------------------------------------------------------------------------------------------------------
  
  # Logical:
  # In logical  it will return result as either TRUE or FALSE
A<-T
# (Right side of "T" means TRUE,Like wise for "F" means FALSE)
B<-F
class(B)
# ------------------------------------------------------------------------------------------------------------------------------------------
  
  # Factors :
  # In R,we will see new data type called factors.Factors can be character or numeric,it show you the values along with levels(Unique value).For example ;
b<-c("m","f","m","f","m","m")
# In this above code ,b is character.TO check type,
class(b)
# Now,converting character to factor by following code
a3 <- as.factor(b)
a3
class(a3)
C
# It show you the value along with levels in ascending order(Unique values)
# ------------------------------------------------------------------------------------------------------------------------------------------
#   ------------------------------------------------------------------------------------------------------------------------------------------
  
  # Data structures :
  # There are 5 main data structures in R.They are :
  # 1)scalar 2)Vector 3)Matrix 4)Data Frames 5)list
# Scalar:
#   Single values are scalar, either it is character or numeric or logical
# Numeric scalar :
A<-4

# Character scalar :
A<-"4"
# ------------------------------------------------------------------------------------------------------------------------------------------
  
#   Vector :
#   More than one element either it is character or numeric then it will called as vector 
# Numeric vector :
a<-c(4,5,6,7)
# Character vector :
a<-c("m","f","f","m")
# Make sure,if your vector contains numeric and character then everything will become change into character 
# ------------------------------------------------------------------------------------------------------------------------------------------
  
  # Matrix:
  # Before get into that,if want to store 1 to 5 in a variable ,what we will usual do is a<-c(1,2,3,4,5).Now if want to store from 1 to 100,is it possible to give one by one?what will we usually do is
A<-1:100
b1 <- 293:348
matrix(b1,nrow = 8)
# Now coming back to matrix,syntax of matrix is
A<-matrix(1:20,nrow=4,ncol=5)
# To check,
class(A)
A
# Assigning number  1 to 20 with dimension of 4 rows and 5 columns
# In matrix,it can be either numeric or character. If we mixed up everything will become change to character.
A<-matrix(1:20,nrow=4,ncol=5)
# In the above code,no need to give two parameter(nrow and ncol explicitly),any one of the parameter is fine.
A<-matrix(1:20,nrow=4)
(or)
A<-matrix(1:20,ncol=5)
# ------------------------------------------------------------------------------------------------------------------------------------------
  
  # Data Frame :
  # While reading files from text,csv,excel and sql, usually it read under the format of data frame 
# Syntax of data frame is :
  A<-read.table(header=T,text="
                Name age
                Arun 34
                Ajay 31
                Bala 29
                ")
A
# In that header=T means take first row as column header otherwise it will take random column name starting with V1,V2.Try
A<-read.table(text="
Name age
Arun 34
Ajay 31
Bala 29
")
A
names(A)
#check column name it randomly by V1,V2

A<-read.table(header=T,text="
                Name age
                Arun 34
                Ajay 31
                Bala 29
                ")
A

# To check it is dataframe or not ,
class(A)
# Here we are having two column and three rows, to check try,,
dim(A)
# To check how many rows in data frame separately ,try
nrow(A)
# To check how many columns in data frame separately, try,
ncol(A)
# (or)
length(A)
# To check what each columns has it data type(character,numeric,logical,factor) ,try.
str(A)
A
# Here they gives information about how many observation(Rows) and how many columns (Column)
# Along with that,
# Name is showing as factor ,not as character
# Age as int(or) numeric.
# While creating dataframe we didn't mentioned about data type of each column,but is is taking as factor,because while creating dataframe character columns always consider as factor
# If you want to change particular column as character data type
A$Name<-as.character(A$Name)
#In the above code, what a$Name indicates is pointing Name column(child) to dataframe(parent)
# Syntax
# (Dataframe)(Connector)(column name)
# A$Name

# Now,check again
str(A)
# If you want to take first row separately try,
A[1,]
# From the above,in the square bracket ,comma play the key role,before comma is row selection and after comma is column selection.
# From the above code a[1,] means it take first row(before comma is is mentioned) and take all column (indicated by empty after comma punctuation )
# Now we will see how to get the first column from DF(DataFrame )
A[,1]
# Now we will see how to check third row of second column (How to get 29 separately )
A[3,2]
# Now we will see how to get third row and first row one by one
A[c(3,1),]
# I have used "c" symbol because I am looking to get more than one element(3rd and 1st row)
# Now we will see about how to get second and first column
A[,c(2,1)]
# ------------------------------------------------------------------------------------------------------------------------------------------
  
  
#   List :
#   List accept multiple data type and length of each data type need not to be same.Syntax for creating list is
e<-list(a=1:10,b=c("m","f"),c=T)
length(e)
# Here ,e variable contains three container(a,b,c) and length of each container was not same
length(e$a)
# There are 10 elements in "a" contatiner
length(e$b)
# There are 2 elemens in "b" container
length(e$c)
# Single element in "c" containter 

