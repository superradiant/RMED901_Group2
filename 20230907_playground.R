dplyr::data_frame() # uses data_frame funciton from dplyr

#Iterations
for (i in 1:10) { #10 times 
  j <- i + 1
print(j)
}

for (i in c(2,4,6)) { 
  j <- i^2
  print(j)
}


for (i in c("Erle", "asdf", "asdflj")) {
  j <- paste("Hi", i, sep=" ") #sep is separator, here space between characters
  print(j)
}

install.packages("medicaldata")
df <- medicaldata::laryngoscope
head(df)
mean(df$BMI[df$age > 30]) #$ accesses column
length(df$BMI)
sum(is.na(df$BMI[df$age > 30]))
mean(df$BMI[df$age > 30], na.rm = T)
mean(df$BMI[df$age > 30 & df$gender == 0], na.rm = T)

#conditionals
x <- 5
x == c(5,6) #checks if x is in each position in Vektor
x %in% c(6,6,5,8,4,1,2,4,9) #check if x can be found in Vektor

for (i in 1:nrow(df)){ #
  if(df$age[i] < 30){
    df$age_range[i] <- "under 30"
  } else if (df$age[i] >= 3 & df$age[i] <= 65) {
    df$age_range[i] <- "30-65"
  } else if (df$age[i] > 65){
    df$age_range[i] <- "over 65"
  }
}
df$age_range

table(df$age_range)

count(df, age_range) #tidyverse. Better to separate via comma here, so count can count multiple columns

adding_to_5_more <- function(x, y){ #generates a function
  if(x <= 5){
    return(x)
  }
  return(x + y)
}
adding_to_5_more(7, 6) #calls the function "adding_to_5_more" we defined earlier
adding_to_5_more(1, 5)
adding_to_5_more(1)
adding_to_5_more(4)

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
check_input(6)
check_input(6, 'a')
check_input(6, argument3 = 'b')
check_input(6, argument2 = 2958474, 'b')



a <- 5
my_fun <- function(b){ #confusion --> use something else than a
  d <- 2
  a <- d + b
  return(a)
}
my_fun(a)


#exersice_1:
a <- 5
b <- 8
multiplication <- function(c,d){
  z <- c*d
  return(z)
}
multiplication(a,b)

#create function mean(is.na(x))
asdf <- function(x){
  return(mean(is.na(x)))
}

#create function x / sum(x, na.rm = T)
scale_sum <- function(x){
  return(x / sum(x, na.rm = T))
}

#create function sd(x, na.rm = T) / mean(x, na.rm = T))
coef_var <- function(x){
  return(sd(x, na.rm = T) / mean(x, na.rm = T))
}

}
weightmean(c(1.3, 2.7, 4.5), c(5,6,7))# doesn't work, needs to be fixed
