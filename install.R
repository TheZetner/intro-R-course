#install.packages("dplyr")
#install.packages("readr")
#install.packages("ggplot2")
#install.packages("tidyr")

install.packages(c(
    "readr",
    "rmarkdown",
    "cranlogs",
    "visdat",
    "rentrez"))

x <- read_csv("https://www150.statcan.gc.ca/t1/tbl1/en/dtl!downloadDbLoadingData-nonTraduit.action?pid=1710000901&latestN=5&startDate=&endDate=&csvLocale=en&selectedMembers=%5B%5B4%2C12%2C8%2C9%2C5%2C7%2C10%2C3%2C14%2C15%2C6%2C11%2C2%2C1%5D%5D")
