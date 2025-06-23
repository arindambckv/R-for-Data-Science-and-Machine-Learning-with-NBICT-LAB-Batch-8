# importing the dataset
dataset = read.csv("data.csv")
View(dataset)

# importing the library
library(ggplot2)

# creating the basic histogram
ggplot(dataset, aes(x = weight)) + 
  geom_histogram()

ggplot(dataset, aes(x = weight)) + 
  geom_histogram(color = "white")

# changing histogram plot line colors by group
ggplot(dataset, aes(x = weight, fill = sex)) + 
  geom_histogram(color = "white", alpha = 0.5, position = "identity")

# we can change the position adjustment
#to use for overlaping points on the layer
#possible values for the argument position are
#"identity", "stack", "dodge"
# Deafault value is "stack".
ggplot(dataset, aes(x = weight, fill = sex)) + 
  geom_histogram(color = "white", alpha = 0.5, position = "dodge") + 
  theme(legend.position = "top")

# Mean line for both male and female
# the plyr package is used to calculate the mean weight of each group
install.packages("plyr")
library(plyr)
group_means = ddply(dataset, "sex", summarise, grp.mean = mean(weight))
group_means

#adding mean line
myplot = ggplot(dataset, aes(x = weight, fill = sex)) + 
  geom_histogram(color = "white", alpha = 0.5, position = "dodge") + 
  geom_vline(data = group_means, aes(xintercept = grp.mean, color = sex), linetype = "dashed") + 
  theme(legend.position = "top")
myplot

# Using custom color palettes
myplot + scale_color_manual(values = c("red", "blue")) + scale_fill_manual(values = c("green", "orange"))

myplot + scale_color_manual(values = c("#999999", "#E69F00")) + scale_fill_manual(values = c("#999999", "#E69F00"))

# using color brewer color palettes
myplot + scale_color_brewer(palette = "Dark2") + 
  scale_fill_brewer(palette = "Dark2")
myplot + scale_color_brewer(palette = "Paired") + 
  scale_fill_brewer(palette = "Paired")

# Using a grey scale
