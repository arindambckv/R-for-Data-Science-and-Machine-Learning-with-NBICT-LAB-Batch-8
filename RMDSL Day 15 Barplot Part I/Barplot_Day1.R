dataset = data.frame(dose = c("D0.5", "D1", "D2"),
                     len = c(4.2, 10, 29.5),
                     gsg = c(44, 77, 7))
View(dataset)
write.csv(dataset, "my_data.csv")
mydata = read.csv("my_data.csv")


library(ggplot2)

#basic barplot
ggplot(data = dataset, aes(x = dose, y = len)) + 
  geom_bar(stat = "identity")

ggplot(data = dataset, aes(x = dose, y = len)) + 
  geom_bar(stat = "identity") + 
  coord_flip()

#change the width of the bar
ggplot(data = dataset, aes(x = dose, y = len)) + 
  geom_bar(stat = "identity", width = 0.5)

# changing color
ggplot(data = dataset, aes(x = dose, y = len)) + 
  geom_bar(stat = "identity", color = "blue", fill = "white", width = 0.5)

# minimal theme with blue fill color
ggplot(data = dataset, aes(x = dose, y = len)) + 
  geom_bar(stat = "identity", fill = "steelblue", ) + 
  theme_minimal()

#barplot with labels
#outside bars
ggplot(data = dataset, aes(x = dose, y = len)) + 
  geom_bar(stat = "identity", fill = "steelblue") + 
  geom_text(aes(label = len), vjust = -0.5, size = 3, color = "#999999") +
  theme_minimal()

#inside bars
ggplot(data = dataset, aes(x = dose, y = len)) + 
  geom_bar(stat = "identity", fill = "steelblue") + 
  geom_text(aes(label = len), vjust = 1, size = 3, color = "white") +
  theme_minimal()

myCarData = mtcars
view(myCarData)

# To make a barplot of count with mtcars dataset
ggplot(data = mtcars, aes(x = factor(cyl))) + 
  geom_bar(stat = "count", width = 0.7, fill = "steelblue") + 
  theme_minimal()











