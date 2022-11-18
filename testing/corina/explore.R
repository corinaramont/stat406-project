setwd("~/stat406-project/datasets")
data = read.csv("data.csv")


param_names = colnames(data)
#unique ids

#radius
boxplot(data$radius_mean, main="Radius Mean")
hist(data$radius_mean, main = "Distribution of Radius Mean")
shapiro.test(data$radius_mean) #not normally dist

boxplot(data$radius_se, main="Radius SE")
hist(data$radius_se, main = "Distribution of Radius SE")

#texture
boxplot(data$texture_mean, main="Texture Mean")
hist(data$texture_mean, main = "Distribution of Texture Mean")

#