#Exercise7_Objects-Part2_Vectors

#Examine two environment variables "studentexp1" and "studentexp2"
#remember everything in R is an object so variables are also objects
#use paste(), class() and typeof() functions to examine the variables
print(studentexp1) #output is a series of numbers
class(studentexp1) #output is "numeric"
typeof(studentexp1) #output is "double"

print(studentexp2) #output is a series of numbers with NA
class(studentexp2) #output is "numeric"
typeof(studentexp2) #output is "double"

#Apply the following functions to the vectors studentexp1 and studentexp
#length(), max(), sum(), mean() and is.na()
length(studentexp1) #output is 18
max(studentexp1) #output is 5
sum(studentexp1) #output is 35
mean(studentexp1) #output is 1.944444
is.na(studentexp1) #output is a series of 18 FALSE values

length(studentexp2) #output is 18
max(studentexp2) #output is NA
sum(studentexp2) #output is NA
mean(studentexp2) #output is NA
is.na(studentexp2) #output is a series of 14 FALSE values nd 4 TRUE values

#Because studentexp2 contains NA values output of the numerical computations of max(), sum(), mean() is NA
#is.na() identifies which values are NA /  missing values
#is.na() returns a logical vector of the same length as its argument x
#is.na() returns TRUE for elements marked NA and FALSE otherwise
#This is why when applied to studentexp1 or studentexp2 the number of FALSE or TRUE values is 18

#Determine how to apply max(), sum() and mean() to studentexp2 where the NA vlaues are removed
#Use help documentation 
help("max")
help("sum")
help("mean")

#For each function the argument na.rm = is neded to remove NA values from the computation
max(studentexp2, na.rm = TRUE) #output is 3
sum(studentexp2, na.rm = TRUE) #output is 22
mean(studentexp2, na.rm = TRUE) #output is 1.571429

#Making vectors
#Make a vector using the operator :
x <- 1:8
x

#Make a vector using runif()
y <- runif(5)
y

#Make vectors using c()
myvector1 <- c(1, 2, 3)
myvector1

myvector2 <- c(1, 2, "Three")
myvector2

#Look at the type for each myvector1 and myvector2
typeof(myvector1) #output is "double"
typeof(myvector2) #output is "character"

#Look at the documentation for c()
help("c")

#Vectors must have elements of the same type
#c() function will coerce the elements to the same type
#The coercion uses a hierarchy
#Hierarchy is lower to higher types: NULL < logical < integer < double < character

#Explore vectors further
paste("Sample", LETTERS) #output is "Sample A" "Sample B" "Sample C"...

#Add the argument collapse to the above paste()
paste("Sample", LETTERS, collapse = ", ") 

#collapse argument makes a string of the samples using a comma as a separator

#Make a vector called Samples using paste() "Sample", LETTERS and sep = "_" argument
Samples <- paste("Sample", LETTERS, sep = "_")
Samples #output is the vector Samples with elements "Sample_A" "Sample_B" "Sample_C"...

#Check length of Samples vector
length(Samples) #output is 26

#Use sample() function to a make a subset of 10 elements from Samples
sample(Samples, 10) #output is 10 random elements from Samples with no repeats

#Subset out the first through third elements of Samples using []
Samples[c(1:3)] #output is  "Samples_A" "Samples_B" "Samples_C




