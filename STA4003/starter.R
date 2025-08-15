require(data.table)
require(fpp3)

######################################################################
# Don't change anything here

Grading <- FALSE

if (Grading==TRUE){
  load("data2015.RData")
  load("data2016.RData")
  load("data2017.RData")
  load("data2018.RData")
  load("data2019.RData")
  Train1 <- data2015
  Train2 <- data2016
  Train3 <- data2017
  Train4 <- data2018
  Test1 <- data2019
} else {
  load("data2014.RData")
  load("data2015.RData")
  load("data2016.RData")
  load("data2017.RData")
  load("data2018.RData")
  Train1 <- data2014
  Train2 <- data2015
  Train3 <- data2016
  Train4 <- data2017
  Test1 <- data2018
}
####################################################################
# Use Train1, Train2, Train3, Train4, Test1 instead of
# data2014,..., data2018 in your codes.

Csum_test <- Test1 %>% mutate(Csum=WIN_POOL.y-WIN_POOL.x) %>% pull(Csum)

