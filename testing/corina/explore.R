setwd("~/stat406-project/datasets")
data = read.csv("data.csv")


param_names = colnames(data)
#unique ids

#radius
boxplot(data$radius_mean, main="Radius Mean")
hist(data$radius_mean, main = "Distribution of Radius Mean")
