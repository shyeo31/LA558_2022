library(timevis)

#make sure the working directory is correct
setwd(getwd())

#import data from csv
ds1<-read.csv("Background.csv",header=T)

############################################################
# Timeline generation
############################################################
library(timevis)
dataGroups <- data.frame(
  id      = 1:19,
  content = ds1$desc,
  start   = ds1$start,
  end     = ds1$end, 
  group = ds1$cat
)
groups <- data.frame(
  id = c("Residential", "Education", "Employment"),
  content = c("Residential", "Education", "Employment")
)

timevis(data = dataGroups, groups = groups)

