library(ggplot2)
dataset = mtcars

# Converting cyl column from a numeric to a factor variable
dataset$cyl = as.factor(dataset$cyl)

# Adding regression lines based on multiple groups
ggplot(dataset, aes(x=wt, y=mpg, color=cyl))+
  geom_point()+
  geom_smooth(method = lm)


#removing the confidence interval
ggplot(dataset, aes(x=wt, y=mpg, color=cyl))+
  geom_point()+
  geom_smooth(method = lm, se=FALSE)

#extending the regression lines
ggplot(dataset, aes(x=wt, y=mpg, color=cyl))+
  geom_point()+
  geom_smooth(method = lm, se=FALSE, fullrange=TRUE)

#Filling the color of confidence bands
ggplot(dataset, aes(x=wt, y=mpg, color=cyl))+
  geom_point()+
  geom_smooth(method = lm, aes(fill=cyl))

#Changing point shapes manually
ggplot(dataset, aes(x=wt, y=mpg, color=cyl, shape = cyl))+
  geom_point()+
  geom_smooth(method = lm, se=FALSE, fullrange=TRUE) + 
  scale_shape_manual(values=c(8, 3, 10))+
  theme(legend.position = "top")

#Changing point colors manually
ggplot(dataset, aes(x=wt, y=mpg, color=cyl, shape = cyl))+
  geom_point()+
  geom_smooth(method = lm, se=FALSE, fullrange=TRUE) + 
  scale_shape_manual(values=c(8, 3, 10))+
  scale_color_manual(values = c('blue', 'grey', 'orange'))+
  theme(legend.position = "top")

#Customizing scatter plots
ggplot(dataset, aes(x=wt, y=mpg, color=cyl, shape = cyl))+
  geom_point()+
  geom_smooth(method = lm, se=FALSE, fullrange=TRUE) + 
  scale_shape_manual(values=c(8, 3, 10))+
  scale_color_manual(values = c('blue', 'grey', 'orange'))+
  labs(title="Miles per gallon \naccording to the weight", 
       x="weight", y= "miles/Gallon")+
  theme(legend.position = "top")  

#Customizing themes
plot = ggplot(dataset, aes(x=wt, y=mpg, color=cyl, shape = cyl))+
  geom_point()+
  geom_smooth(method = lm, se=FALSE, fullrange=TRUE) + 
  scale_shape_manual(values=c(8, 3, 10))+
  scale_color_manual(values = c('blue', 'grey', 'orange'))+
  labs(title="Miles per gallon \naccording to the weight", 
       x="weight", y= "miles/Gallon")+
  theme(legend.position = "top")
plot
plot + theme_classic()
plot + theme_minimal()
