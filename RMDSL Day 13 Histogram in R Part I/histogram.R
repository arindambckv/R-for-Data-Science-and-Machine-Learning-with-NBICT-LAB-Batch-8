# importing the dataset
dataset = read.csv("data.csv")
View(dataset)

# importing the library
library(ggplot2)

# Basic histogram using ggplot2
ggplot(dataset, aes(x = weight)) + 
  geom_histogram()

# Changing the width of bins
ggplot(dataset, aes(x = weight)) + 
  geom_histogram(binwidth = 2)

# Changing bar line colors
ggplot(dataset, aes(x = weight)) + 
  geom_histogram(binwidth = 1, color = "red")

# Changing bar fill colors
ggplot(dataset, aes(x = weight)) + 
  geom_histogram(binwidth = 1.5, color = "red", fill = "lightblue")

# Adding the mean line
myplot = ggplot(dataset, aes(x = weight)) + 
  geom_histogram(color = "red", fill = "lightblue")

myplot

myplot + geom_vline(aes(xintercept = mean(weight)), color = "blue", linetype = "dashed", size = 1)

# Histogram with density plot
ggplot(dataset, aes(x = weight)) + 
  geom_histogram(aes(y = after_stat(density)), color = "red", fill = "lightblue")+
  geom_density()
ggplot(dataset, aes(x = weight)) + 
  geom_histogram(aes(y = after_stat(density)), color = "red", fill = "lightblue")+
  geom_density(fill = "blue")

ggplot(dataset, aes(x = weight)) + 
  geom_histogram(aes(y = after_stat(density)), color = "red", fill = "lightblue")+
  geom_density(fill = "blue", alpha = 0.2)

# Changing line color and fill color
ggplot(dataset, aes(x = weight)) + 
  geom_histogram(aes(y = after_stat(density)), color = "red", fill = "lightblue")


