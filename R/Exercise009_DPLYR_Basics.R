#Exercise9_DPLYR_Basics

#Remember dplyr verbs take the form: verb(tibble, arguments)

#Attach the dplyr package
library(dplyr)

#rename() the First_Name column to Given_Name
rename(surveysheet, Given_Name = First_Name) #this prints a tibble of surveysheet where now the first column is Given_Name

#Did this change the object surveysheet? Take a look a survesheet
View(surveysheet)
glimpse(surveysheet)

#First column is still First_Name in the object surveysheet
#would need to re-write survey sheet to modify the object surveysheet
#To re-write: surveysheet <- rename(surveysheet, Given_Name = First_Name)

#Create individual tibbles from surveysheet using select()
#Remember to use - to remove columns and name what you want to keep

#Email and R_Experience
select(surveysheet, Email, R_Experience)

#First_Name Last_Name Email
select(surveysheet, 1:3)

#Email followed by everything() else
select(surveysheet, Email, everything())

#Remove the following columns:
#Timestamp_2
#R_Experience_2
#R_Experience
select(surveysheet, -Timestamp_2, -R_Experience_2, -R_Experience)

#Show only First_Name  and Last_Name using ends_with()
select(surveysheet, ends_with("Name"))

#Everything except First_Name and Last_Name using ends_with()
select(surveysheet, -ends_with("Name"))

#filter() using is.na() on the Timestamp_1 column
filter(surveysheet, is.na(Timestamp_1))

#filter() using the following logical expressions:
#R_Experience <=2
filter(surveysheet, R_Experience <= 2)

#R_Experience above 3
filter(surveysheet, R_Experience > 3) #Try this again by wrapping it in glimpse()
#Wrapping in glimpse() allows you to view the R_Experience filtered column

#Preference == "WebEx"
filter(surveysheet, Preference == "WebEx")
glimpse(filter(surveysheet, Preference == "WebEx"))

#Timestamp < 2020-01-01
filter(surveysheet, Timestamp_1 < "2020-01-01")

#Both Timestamp_1 and Timestamp_2, which are not NA
filter(surveysheet, !is.na(Timestamp_1) &!is.na(Timestamp_2))
#Note ! operator indicates Not

#arrange() based on:
#First_Name
arrange(surveysheet, First_Name)

#Last_Name
arrange(surveysheet, Last_Name)

#Preference, Timestamp
arrange(surveysheet, Preference, Timestamp_1, Timestamp_2)

#Using the mutate() function
#To create a new column based on R_Experience to show the experience as a percentage
mutate(surveysheet, R_Exp = R_Experience *20)

#Change the mutate() call to express the new column as a decimal
mutate(surveysheet, R_Exp = R_Experience *.2)


#Create a new column with mutate() by pasting First_Name and Last_Name together
mutate(surveysheet, Name = paste(First_Name, Last_Name))

#How would you use snakecase::to_lower_upper_case() on that new column?
mutate(surveysheet, 
       CombNames = snakecase::to_lower_upper_case(
                                                  paste(First_Name, 
                                                        Last_Name))) %>% 
                                                                      View