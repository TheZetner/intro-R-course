#Excercise10_DPLYR_and_Magrittr_Pipes

#Create a new minimal list from surveysheet
#Use magrittr pipes to connect dplyr verbs
#Create a tibble that shows the following:

newsurvey <- surveysheet %>% #saves the tibble to the ojbect newsurvey
  arrange(Timestamp_1) %>%   #arranges by column Timestamp_1
  rename(Contact_Info = Email, #renames the columns
         Given_Name = First_Name, 
         Surname = Last_Name) %>%
  select(Contact_Info,  # selects the order of the columns
         Given_Name, 
         Surname, 
         everything())

#Create a new row in the tibble using dplyr's new_row() function
#Glimpse newsurvey to see what columns you need
glimpse(newsurvey)
newsurvey %>% add_row(Given_Name = first, 
                      Surname = last, 
                      Contact_Info = email, 
                      Preference = "WebEx", 
                      R_Experience = rexp) %>% View

#Create an email list for WebEx participants
#Using magritter pipes to connect dplyr verbs
#Pull a vector of Contact_Info from your newsurvey tibble:

newsurvey %>% filter(Preference == "WebEx" | is.na(Preference)) %>%
  pull(Contact_Info) %>% 
  paste(collapse = "; ")

#Make the above an ojbect called emaillist
emaillist <- newsurvey %>% 
  filter(Preference == "WebEx" | is.na(Preference)) %>%
  pull(Contact_Info) %>% 
  paste(collapse = "; ")