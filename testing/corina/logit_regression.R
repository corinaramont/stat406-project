library(lme4)
library(dplyr)
library(tidyr)
library(ggplot2)
library(lmerTest)

setwd("~/stat406-project/datasets")
data = read.csv("data.csv")

#radius_se + 
#  texture_se + perimeter_se + area_se + smoothness_se +
#  compactness_se + concavity_se + concave.points_se + 
#  symmetry_se + fractal_dimension_se + radius_worst + 
#  texture_worst + perimeter_worst + area_worst + 
#  smoothness_worst + compactness_worst + concavity_worst + 
#  concave.points_worst + symmetry_worst + fractal_dimension_worst

data1 = data

for(i in 1:nrow(data1)){
  if(data1$diagnosis[i] == "M"){
    data1$diagnosis[i] = 1
  }else{
    data1$diagnosis[i] = 0
  }
}

#fitting model with their means
model = glm(as.factor(diagnosis) ~ radius_mean + texture_mean + 
              perimeter_mean + area_mean + smoothness_mean + 
              compactness_mean + concavity_mean + concave.points_mean +
              symmetry_mean + fractal_dimension_mean,
            data = data1, family=binomial)
summary(model)

step(model, direction = "backward")

#fitting model with "worst" scenarios
model_w = glm(as.factor(diagnosis) ~ radius_worst + texture_worst + perimeter_worst + area_worst + 
                smoothness_worst + compactness_worst + concavity_worst + 
                concave.points_worst + symmetry_worst + fractal_dimension_worst,
              data = data1, family=binomial)
summary(model_w)
step(model_w, direction = "backward")



#fitting new models with aic suggestions (mean)
new_model= glm(as.factor(diagnosis) ~ radius_mean + texture_mean + area_mean 
               + smoothness_mean + concave.points_mean + symmetry_mean, 
               data = data1, family = binomial)





#fitting new models w/ aic suggestions (worst)
new_model_w = glm(as.factor(diagnosis) ~ texture_worst + 
                    area_worst + smoothness_worst + compactness_worst + 
                    concavity_worst + concave.points_worst + symmetry_worst,
                  data = data1, family = binomial)


#compare log likelihood values
logLik(model)
logLik(model_w)
logLik(new_model)
logLik(new_model_w)


