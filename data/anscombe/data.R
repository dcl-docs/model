# Modified Anscombe's quartet data

# Author: Sara Altman
# Version: 2019-09-06

# Libraries
library(tidyverse)

# Parameters
file_out_1 <- here::here("data/anscombe/anscombe_1.rds")
file_out_1_outlier <- here::here("data/anscombe/anscombe_1_outlier.rds")

#===============================================================================

df <-
  tribble(
    ~x,    ~y,
    10.0,  8.04,
    8.0,  6.95,
    13.0,  7.64,
    9.0,  8.81,
    11.0,  8.33,
    14.0,  9.90,
    6.0,  7.24,
    4.0,  4.25,
    12.0, 10.84,
    7.0,  4.82,
    5.0,  5.68
  ) 

df %>% 
  write_rds(file_out_1)

df %>% 
  add_row(x = 13, y = -6) %>% 
  write_rds(file_out_1_outlier)



