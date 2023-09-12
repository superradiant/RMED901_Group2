library(tidyverse)
library(here)
here()
data1 <- read_delim(here("data_original", "exam_data.txt"))
data1 <- distinct(data1)
data2 <- read_delim(here("data_original", "exam_data_join.txt"))
data2 <- distinct(data2) # removes duplicated columns, always check
data_mereged <- merge.data.frame(data1, data2) #merges both differnt data frames into one.

