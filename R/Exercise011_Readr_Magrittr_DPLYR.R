# Exercise11_Readr, Magrittr and DPLYR 


# Library Statements ####
# Install the "rentrez" package if needed
# install.packages("rentrez")
library(rentrez)
library(dplyr)
library(magrittr) 
library(readr)

# Objects ####
# Load the blast hit table (should be in your data folder) 
hittable <- read_csv("~/repos/intro-R-course/data/hittable.csv", 
                     col_names = FALSE)

# Examining the blast hit table 
vis_dat(hittable)



# Code ####

# Rename the columns, notice how the hittable must be rewritten to save the changes 
hittable <- hittable %>% 
  setNames(c("query", "subject", "pid", "alignment_length", "mismatches", "gap_opens", "q_start", 
             "q_end", "s_start", "s_end", "evalue", "bit_score"))

# Rearrange the query sequences by descending order of bit scores, when you use the %>% you read from left to right 
tophits <- hittable %>% 
  group_by(query) %>% 
  arrange(query, desc(bit_score)) %>% 
  top_n(5) %>% 
  mutate(title = {
    entrez_summary("nucleotide", subject) %>% 
      extract_from_esummary("title")
  }) %>% 
  select(query, subject, title, bit_score, evalue, pid)

# View tophits 
View(tophits)
# there are multiple sequences with the same bit score leading to more than 5 sequences being kept in tophits 
# top bit score is 654

#Write the tophits table 
write_tsv(tophits, "~/workshop2020/output/tophits.tsv")

