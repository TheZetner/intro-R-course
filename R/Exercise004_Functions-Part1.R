#Exercise 4

#Practise using functions

#First function is paste(). 
#Learn what paste() does and its arguments by looking at the documentation
help("paste")

#Try using paste() to see what it carries out on the arguments supplied
paste("hello", "world")

#paste() converts the arguments, in this case "hello" and "world" to character strings separated by a space

#What is the sep agrument used for in the paste()function? What is the sep default?
paste("hello", "world", sep = "*")

#sep argument defines the separator used when converting the first agruments to character strings
#when left undefined the default for sep is a space

#Add the argument "it's <YOUR Name>" to paste()
paste("hello", "world", "it's Bob")

#Learn about the seq() function using help()
help("seq")

#Understanding the seq()
seq(1,10)
seq(10,1)

#seq() generates a number sequence from the arguments provided

#Understanding the arguments of seq()
seq(1,10,2)
seq(10,1,2)

# the 2 in the above seq() is the by argument which defines the increment of the sequence
#seq(10,1,2) produces an error that indicates the wrong sign used in the 'by' argument
#Correcting the error in the seq() function
seq(10,1,-2)

#Math operators are also functions
2*2
2/2
2+3

#Check the available math operators in R
?Arithmetic

#Advanced mathematical functions have explicit functions with argumetns
#Look at the documentation for round(), sqrt(),and abs()
help("round")
help("sqrt")

#Try out the round() functions and learn about the agrument 'by'
round(4.6, digits = 0)
round(4.66, digits = 1)

#The 'by' argument for round() defines the number of decimal places to round the first argument to
#Default value for 'by' is 0