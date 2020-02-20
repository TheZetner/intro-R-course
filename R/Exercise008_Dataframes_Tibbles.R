# Exercise8_DataFrames and Tibbles 

# Attach the tibble package 
library(tibble) 

# Identify the difference between Dataframes and Tibbles 

# Try viewing the dataset as a dataframe 
mtcars
# The top line contains all the column names and the row names are listed down the left 

# Try viewing the dataset as a tibble 
as_tibble(mtcars)

# Tibbles only print the first 10 rows and also reports the type of variable of each column  
# Example: all the columns in mtcars are dbl or double-precision vectors (numeric values with decimal points)
# The tibble method of consicely printing information in the console makes working with large datasets easier 

# View the summary statistics 
summary(mtcars) 

# Use View() to look at the dataframe outside the console 
View(surveysheet)

# Use glimpse() to look at the dataframe. Notice how it like a transposed tibble. 
glimpse(surveysheet)


# Attach the visdat package 
library(visdat)

# Use vis_dat to explore the data types and missing values of the dataframe
vis_dat(surveysheet)
# NA or missing data is in grey while the other types are color-coded 

# Investigate the missing data 
vis_miss(surveysheet, cluster=T)
# What percentage of people had no preference (Webex or In-class)? 
# 31.71%
# What percentage of the data is missing in total? 
# 23% 
  

# Extra: 
# To view more information about the mtcars dataset you can type:
?mtcars 
