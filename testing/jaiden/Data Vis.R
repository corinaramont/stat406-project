install.packages("installr")

library(installr)


updateR()


cancer = read.csv("data.csv")

library("ggplot2")

install.packages("MASS") 
install.packages("reshape2") 
install.packages("reshape") 

library(MASS) 
library(reshape2) 
library(reshape) 

data_mean <- cancer[ ,c("diagnosis", "radius_mean", "texture_mean","perimeter_mean", 
                        "area_mean", "smoothness_mean", "compactness_mean", 
                        "concavity_mean", "concave.points_mean", "symmetry_mean", 
                        "fractal_dimension_mean" )]
ggplot(data = melt(data_mean, id.var = "diagnosis"), mapping = aes(x = value)) + 
  geom_histogram(bins = 10, 
                 aes(fill=diagnosis), alpha=0.5)+ 
  facet_wrap(~variable, scales ='free_x')


## Create a frequency table
diagnosis.table <- table(cancer$diagnosis)
colors <- terrain.colors(2) 
# Create a pie chart 
diagnosis.prop.table <- prop.table(diagnosis.table)*100
diagnosis.prop.df <- as.data.frame(diagnosis.prop.table)

pielabels <- sprintf("%s - %3.1f%s", diagnosis.prop.df[,1], diagnosis.prop.table, "%")

pie(diagnosis.prop.table,
    labels=pielabels,  
    clockwise=TRUE,
    col=colors,
    border="gainsboro",
    radius=0.8,
    cex=0.8, 
    main="frequency of cancer diagnosis")
legend(1, .4, legend=diagnosis.prop.df[,1], cex = 0.7, fill = colors)
