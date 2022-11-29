#Checking Assumptions for Logistic Regression

# 1.) We know our response variable is binary (malignant/bengin). This was given.
# 2.) All features/varibales are independent 
# 3.) We will check the independent variables' pearsons correlation

setwd("~/stat406-project/datasets")
data = read.csv("data.csv")

data1 = data

for(i in 1:nrow(data1)){
  if(data1$diagnosis[i] == "M"){
    data1$diagnosis[i] = 1
  }else{
    data1$diagnosis[i] = 0
  }
}


print(cor(data1[, c('radius_mean', 'texture_mean', 'perimeter_mean', 
              'area_mean', 'smoothness_mean', 'compactness_mean', 
              'concavity_mean', 'concave.points_mean', 'symmetry_mean', 
              'fractal_dimension_mean')]))

#Our Reduced Model is...

print(cor(data1[, c('radius_meaan', 'texture_mean', 'area_mean', 
                   'smoothness_mean', 'concave.points_mean', 'symmetry_mean')]))


# 4.) Now we will check that continous variables have linearity against the 
# log odds of the dependent variable

new_model= glm(as.factor(diagnosis) ~ radius_mean + texture_mean + area_mean 
               + smoothness_mean + concave.points_mean + symmetry_mean, 
               data = data1, family = binomial)

probabilities = predict(new_model, type = 'response')

logit = log(probabilities/(1-probabilities))

library('ggplot2')

ggplot(data1, aes(logit, radius_mean))+
  geom_point(size=0.5, alpha=0.5)+
  geom_smooth(method = "loess")+
  theme_bw()

ggplot(data1, aes(logit, area_mean))+
  geom_point(size=0.5, alpha=0.5)+
  geom_smooth(method = "loess")+
  theme_bw()

ggplot(data1, aes(logit, smoothness_mean))+
  geom_point(size=0.5, alpha=0.5)+
  geom_smooth(method = "loess")+
  theme_bw()

ggplot(data1, aes(logit, texture_mean))+
  geom_point(size=0.5, alpha=0.5)+
  geom_smooth(method = "loess")+
  theme_bw()

ggplot(data1, aes(logit, symmetry_mean))+
  geom_point(size=0.5, alpha=0.5)+
  geom_smooth(method = "loess")+
  theme_bw()

ggplot(data1, aes(logit, concave.points_mean))+
  geom_point(size=0.5, alpha=0.5)+
  geom_smooth(method = "loess")+
  theme_bw()

# All features are fairly linear

# Checking for outliers 

plot(new_model, which = 4, id.n = 6)

