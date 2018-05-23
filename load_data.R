library(tidyverse)
library(lubridate)
library(magrittr)

# Read the data in
data <- read_delim("household_power_consumption.txt", delim = ";", na = "?")


# Filter rows so date is 2007-02-01 or 2007-02-02
# Convert and combine Date and Time variables to a datetime
data %<>%
    filter(Date %in% c("1/2/2007", "2/2/2007")) %>%
    mutate(datetime = dmy_hms(paste(Date, Time)))