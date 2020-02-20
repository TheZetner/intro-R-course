#Exercise5_Functions-Part2

#Attach the package cranlogs
library(cranlogs)

#Identify the difference between :: and ::: with cranlogs
#Try cranlogs:: first. Do not hit enter
cranlogs::
#Pop-up box should display the functions of cranlogs

#Try cranlogs::: do not hit enter
cranlogs:::
#The ::: displys the private functions and data - the purple icons available for cranlogs
  
#Call formals() on cran_downloads - do not hit enter
formals(cran_downloads) 
#first hit F1 - notice documentation pane populates
#Then hit F2 - notice the source code for the function is displayed
#Compare the usage statement in the documentation to the source code displayed with F2
#Look at the help documentation for cran_downloads()