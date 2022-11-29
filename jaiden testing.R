setwd("~/stat406-project/datasets")
data = read.csv("data.csv")

ata_mean <- Cancer.rawdata[ ,c("diagnosis", "radius_mean", "texture_mean","perimeter_mean",
                               "area_mean", "smoothness_mean", "compactness_mean", 
                               "concavity_mean", "concave.points_mean", "symmetry_mean", 
                               "fractal_dimension_mean" )]

#all 10 variables
model = glm(as.factor(diagnosis) ~ radius_mean + texture_mean + 
              perimeter_mean + area_mean + smoothness_mean + 
              compactness_mean + concavity_mean + concave.points_mean +
              symmetry_mean + fractal_dimension_mean,
            data = data, family=binomial)

summary(model)

#no radius mean
model = glm(as.factor(diagnosis) ~ radius_mean + texture_mean + 
              perimeter_mean + area_mean + smoothness_mean + 
              compactness_mean + concavity_mean + concave.points_mean +
              symmetry_mean + fractal_dimension_mean,
            data = data, family=binomial)

summary(model)

model = glm(as.factor(diagnosis) ~ radius_mean + texture_mean + 
              perimeter_mean + area_mean + smoothness_mean + 
              compactness_mean + concavity_mean + concave.points_mean +
              symmetry_mean + fractal_dimension_mean,
            data = data, family=binomial)

summary(model)

model = glm(as.factor(diagnosis) ~ radius_mean + texture_mean + 
              perimeter_mean + area_mean + smoothness_mean + 
              compactness_mean + concavity_mean + concave.points_mean +
              symmetry_mean + fractal_dimension_mean,
            data = data, family=binomial)

summary(model)

model = glm(as.factor(diagnosis) ~ radius_mean + texture_mean + 
              perimeter_mean + area_mean + smoothness_mean + 
              compactness_mean + concavity_mean + concave.points_mean +
              symmetry_mean + fractal_dimension_mean,
            data = data, family=binomial)

summary(model)

model = glm(as.factor(diagnosis) ~ radius_mean + texture_mean + 
              perimeter_mean + area_mean + smoothness_mean + 
              compactness_mean + concavity_mean + concave.points_mean +
              symmetry_mean + fractal_dimension_mean,
            data = data, family=binomial)

summary(model)

model = glm(as.factor(diagnosis) ~ radius_mean + texture_mean + 
              perimeter_mean + area_mean + smoothness_mean + 
              compactness_mean + concavity_mean + concave.points_mean +
              symmetry_mean + fractal_dimension_mean,
            data = data, family=binomial)

summary(model)

model = glm(as.factor(diagnosis) ~ radius_mean + texture_mean + 
              perimeter_mean + area_mean + smoothness_mean + 
              compactness_mean + concavity_mean + concave.points_mean +
              symmetry_mean + fractal_dimension_mean,
            data = data, family=binomial)

summary(model)

model = glm(as.factor(diagnosis) ~ radius_mean + texture_mean + 
              perimeter_mean + area_mean + smoothness_mean + 
              compactness_mean + concavity_mean + concave.points_mean +
              symmetry_mean + fractal_dimension_mean,
            data = data, family=binomial)

summary(model)
step(model, direction = "backward")