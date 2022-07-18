library(caret)
library(doSNOW)
library(dplyr)

lirios <- iris

lirios$Sepal.Length

train <- read.csv("train.csv", stringsAsFactors = FALSE)
view(train)

# Partition data - train (X%) & test (Y%) - Example: X,Y = 80,20

set.seed(0001)
indexSet <- sample(2, nrow(lirios),replace=T,prob=c(0.8,0.2))
#indexSet <- sample(lirios,2, replace = FALSE,prob=c(0.8,0.2))

train <- lirios[indexSet==1,]
test  <- lirios[indexSet==2,]

View(train)