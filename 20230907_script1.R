library(tidyverse)
library(modeldata)

data(ames)

ames %>%
  select(Garage_Type, Year_Built) %>%
  count(Year_Built, Garage_Type) %>%
  arrange(desc(n))

some_prices <- ames %>%
  select(Garage_Type, Year_Built, Sale_Price)

my_fun <- function(a, g){
  ms <- some_prices %>%
    filter(Year_Built == a) %>%
    group_by(Garage_Type) %>%
    summarise(m = mean(Sale_Price))
  i <- which.max(ms$m)
  return(
    ms$Garage_Type[i]
  )
}

my_fun(2006)
