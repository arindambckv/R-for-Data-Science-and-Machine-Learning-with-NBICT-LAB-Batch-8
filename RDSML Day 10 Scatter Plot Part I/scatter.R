#install.packages("ggplot2")
library(ggplot2)
dataset = mtcars

#generating basic scatter plot
ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point()

#changing the point size and shape
ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point(size= 2)

ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point(size=4)
ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point(size=2, shape=1)
ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point(size=2, shape=5)

#Adding the regression line
ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point(size=2, shape=18) geom_smooth()