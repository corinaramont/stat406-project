library(dplyr)
library(tidyr)
library(ggplot2)

setwd("~/stat406-project/datasets")
data = read.csv("data.csv")


param_names = colnames(data)
#unique ids

#radius
boxplot(data$radius_mean, main="Radius Mean")
hist(data$radius_mean, main = "Distribution of Radius Mean")

#texture
boxplot(data$texture_mean, main="Texture Mean")
hist(data$texture_mean, main = "Distribution of Texture Mean")

#checking normality of all mean variables (BENIGN)
dataB = data %>% filter(diagnosis == "B")
shapiro.test(dataB$radius_mean) 
shapiro.test(dataB$texture_mean) #not normally dist
shapiro.test(dataB$perimeter_mean) 
shapiro.test(dataB$area_mean) #not normally dist
shapiro.test(dataB$smoothness_mean) #not normally dist
shapiro.test(dataB$compactness_mean) #not normally dist
shapiro.test(dataB$concavity_mean) #not normally dist
shapiro.test(dataB$concave.points_mean) #not normally dist
shapiro.test(dataB$symmetry_mean) #not normally dist
shapiro.test(dataB$fractal_dimension_mean) #not normally dist


#checking normality of all mean variables (MALIGNANT)
dataM = data %>% filter(diagnosis == "M")
shapiro.test(dataM$radius_mean) #not normally dist
shapiro.test(dataM$texture_mean) #not normally dist
shapiro.test(dataM$perimeter_mean) #not normally dist
shapiro.test(dataM$area_mean) #not normally dist
shapiro.test(dataM$smoothness_mean) #not normally dist
shapiro.test(dataM$compactness_mean) #not normally dist
shapiro.test(dataM$concavity_mean) #not normally dist
shapiro.test(dataM$concave.points_mean) #not normally dist
shapiro.test(dataM$symmetry_mean) #not normally dist
shapiro.test(dataM$fractal_dimension_mean) #not normally dist

new = data[,2:12]
newdata = new %>% gather(variable, measurement, 
                         radius_mean:fractal_dimension_mean)
newdata1 = newdata %>% 
  filter(!variable %in% c("area_mean", "perimeter_mean", 
                          "radius_mean", "texture_mean"))
newdata2 = newdata %>% 
  filter(variable %in% c("radius_mean", "texture_mean", "perimeter_mean"))
newdata3 = newdata %>% 
  filter(variable %in% c("area_mean"))

ggplot(data = newdata1,
       aes(x=diagnosis, y=measurement, fill = diagnosis)) + 
  geom_boxplot() + facet_wrap(~variable)
ggplot(data = newdata2,
       aes(x=diagnosis, y=measurement, fill = diagnosis)) + 
  geom_boxplot() + facet_wrap(~variable)
ggplot(data = newdata,
       aes(x=diagnosis, y=measurement, fill = diagnosis)) + 
  geom_boxplot() + facet_wrap(~variable)

