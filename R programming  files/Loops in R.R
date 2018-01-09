
# -----------------------------------Write a simple for loop in R-----------------------
  
  # A for loop is used to iterate over a vector, in R programming.

# Syntax of for loop
for (val in sequence) {
  statement
}
# Here, sequence is a vector and val takes on each of its value during the loop. In each iteration, statement is evaluated.
########

ab1<-c(2,3,4,56,7,2)
p1<-""
for (k in 1:length(ab1)){
  p1[k]<-ab1[k]+1
}

samples<-c(1:10)
for (thissample in samples)
{
  str <- paste(thissample,"is current sample",sep=" ")
  
}


for (thissample in samples)
{
  if (thissample %% 2 == 0) next
  str <- paste(thissample,"is current sample",sep=" ")
  print(str)
}

# Instead of extracting directly like new_variavle<-subset(mtcars,cyl %in% c(4,6)),you want 
# to extract from another dataframe.
l<-c(4,5,6)
l<-as.data.frame(l)
#I have created dataframe and it need to extract row based in mtcars
n<-NULL
n<-as.data.frame(n)
#created empty dataframe called n
for(k in 1:nrow(l)){
  j<-subset(mtcars,cyl==l[k,])
  n<-rbind(n,j)
}


###########
# -----------------------------------------Using Next-----------------------------------------
  
#   Let’s have a look at a more mathematical example.
# Suppose you need to print all uneven numbers between 1 and 10 but even numbers should not be printed. 
# In that case your loop would look like this:
  ########
  for (i in 1:10) {
    if (i %% 2){
      next
    }
    print(i)
  }
#############

# A next statement is useful when we want to skip the current iteration of a loop without terminating it. On encountering next,
# the R parser skips further evaluation and starts next iteration of the loop.
x <- 1:5

for (val in x) {
  if (val == 3){
    next
  }
  print(val)
}
############
# --------------------------------- BREAK Loop---------------------------------------------------
  
#   A break statement is used inside a loop to stop the iterations and flow the control outside of the loop. 
# In a nested looping situation, where there is a loop inside another loop, this statement exits from the innermost loop that is being evaluated.

x <- 1:5

for (val in x) {
  if (val == 3){
    break
  }
  print(val)
}
# --------------------------------------WHILE Loop----- ------------------------------------- -------------------------------------      
  
  
#   In R programming, while loops are used to loop until a specific condition is met.
# 
# Syntax of while loop
while (test_expression) {
  statement
}
# Here, test_expression is evaluated and the body of the loop is entered if the result is TRUE.
# The statements inside the loop are executed and the flow returns to evaluate the test_expression again. This is repeated each time until test_expression evaluates to FALSE, in which case, the loop exits.

i <- 1

while (i < 6) {
  
  i = i+1
  print(i)
}


# -----------------------------------REPEAT LOOP----------------------------------------------------------------------------      
  
#   A repeat loop is used to iterate over a block of code multiple number of times.
# There is no condition check in repeat loop to exit the loop. 
# We must ourselves put a condition explicitly inside the body of the loop and use the break statement to exit the loop.
# Failing to do so will result into an infinite loop.

# Syntax of repeat loop
repeat {
  statement
}

x <- 1

repeat {
  print(x)
  x = x+1
  if (x == 6){
    break
  }
}


# -------------------------------ifelse() Function--------------------------------------------------------------------------------      
#   Syntax of ifelse() function
# ifelse(test_expression,x,y)  

a = c(5,7,2,9)
ifelse(a %% 2 == 0,"even","odd")
# [1] "odd"  "odd"  "even" "odd" 


# --------------------------------IF Statement-------------------------------------------------------------------------------
  
  # Syntax of if statement
if (test_expression) {
  statement
}

x <- 5
if(x > 0){
  print("Positive number")
}


x <- -5
if(x > 0){
  print("Non-negative number")
} else {
  print("Negative number")
}

(or)

if(x > 0) print("Non-negative number") else print("Negative number")

# Nested If else:
  
  x <- 0
if (x < 0) {
  print("Negative number")
} else if (x > 0) {
  print("Positive number")
} else
  print("Zero")




# which() function gives the TRUE indices of a logical object, allowing for array indices
which(letters=="g")
which(BOD$demand == 19.8)

