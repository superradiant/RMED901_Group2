#-------------Script Header------------------####
# Date: 2023-09-11      
# Author: jan-ake
# Filename: Test_scriptbs
# Description: Let's work here togethers
# Project: RMED901
#--------------------------------------------####

#Testing the branch

x <- c(3, 6, 2, NA) 
mean(x, na.rm = T) # na.rm defalt = FALSE, so it throws error
sd(x, na.rm = T)

check_input <- function(
    argument1, # no default: this argument is required!
    argument2 = 2, # 2 is default
    argument3 = 'a' # 'a' is default
){
  if(argument1 > 5){
    warning("Argument1 should be <= 5, assuming 5.")
    argument1 <- 5
  }
  if(!is.numeric(argument2)){
    stop("Argument2 should be numeric!")
  }
  if(is.character(argument3)){
    message("Well done!")
  }
  output <- list(argument1, argument2, argument3)
  return(output)
}
check_input(1)
