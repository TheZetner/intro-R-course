#Exercise6_Objects-part1

#Assign objects
rexp <- 3
first <- "Bob"
last <- "Smith"
url <- cranlogs:::base_url  #This will show what youare saving to url

#Note the objects age, first and url have been added to the environment pane

#Examing features of objects using functions

print(rexp) #output is 3
print(url) #output is "http://cranlogs.r-pkg.org/"

#print() prints the value of the object supplied

class(rexp) #output is "numeric"
class(url) #output is "character"

#class() examines the features of objects and prints the type of object

str(rexp) #output is num 3
str(url) #output is chr "http://cranlogs.r-pkg.org/"

#str() displays the basic structure of the object

typeof(rexp) #output is "double"
typeof(url) #output is "character"

#typeof() displays the type of an object. 
#Every R object has an underlying "type"
#The "type" determines the set of possible values for the object"
#See help() for the possible types and values
help(typeof)

#Look at all the objects in the environment
ls()
#output should include "age", "deletme", "first", "studentexp1", "Studentexp2","studentfirst", "studentlast", "surveysheet" and "url"

#Delete the object called "deleteme" using remove()
remove(deleteme)

#If need more information on remove() use help()
help(remove)

#Check that "deleteme" object has been deleted from the environment using ls()
ls()

#Nesting functions as objects
#Understanding what the object is
#Understanding the order R processes functions
round(pi, sqrt(4)) #output is 3.14
round(pi, digits = sqrt(4)) #output is 3.14

#The object in these two functions is sqrt(4)
#R processes the inner most functions first
#The sqrt(4) is processed and acts as a numeric object passed to the argument of round()
#digits argument is not required as R processes the function in the proper order and assumes the format round(x, digits =)

#Practise nesting functions as objects
#Use two nested paste() functions to create an email address
#Using <your first name>, <your last name>, and <@mail.com>
#And use the separator "." between your first and last name
paste(paste(first, last, sep = "."), "@mail.com", sep = "")

#output is bob.smith@mail.com
#Remember default for sep = is a space therefore need to define no space