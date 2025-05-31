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
  geom_point(size=1, shape=18) +
  geom_smooth(method= lm)

#removing the confidence interval
ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point() +
  geom_smooth(method = lm, se = FALSE)

#loess method
ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point() +
  geom_smooth()
#change the line tpe and colour
ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point(size=1, shape=18) +
  geom_smooth(method= lm, linetype = "dashed", color = "red")

#changing the confidence interval color
ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point(size=1, shape=18) +
  geom_smooth(method= lm, linetype = "dashed", color = "darkred", fill = "blue")

ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point(size=1, shape=18, colour = "green") +
  geom_smooth(method= lm, linetype = "dashed", color = "darkred", fill = "blue")

#scatter plot with multiple groups


#converting the cyl column from a numeric to factor column
dataset$cyl
dataset$cyl = as.factor(dataset$cyl)

#changing the point shape by the levels of cyl
ggplot(dataset, aes(x = wt, y = mpg, shape = cyl)) +
  geom_point()

#changing point shapes and colors
ggplot(dataset, aes(x = wt, y = mpg, shape = cyl, color = cyl)) +
  geom_point()

#changing point shapes, colors and sizes
ggplot(dataset, aes(x = wt, y = mpg, shape = cyl, color = cyl, size = cyl)) +
  geom_point()
