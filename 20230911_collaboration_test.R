#-------------Script Header------------------####
# Date: 2023-09-11      
# Author: jan-ake
# Filename: Test_scriptbs
# Description: Let's work here togethers
# Project: RMED901
#--------------------------------------------####

x <- c(3, 6, 2, NA) 
mean(x, na.rm = T) # na.rm defalt = FALSE, so it throws error
sd(x, na.rm = T)