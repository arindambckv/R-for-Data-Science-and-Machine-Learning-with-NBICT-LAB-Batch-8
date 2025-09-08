# One way ANOVA
# Importing the dataset
plantgrowth <- PlantGrowth

# Importing the dplyr library
library(dplyr)

# Computing the group means, sd and se
stats <- plantgrowth %>%
  group_by(group) %>%
  summarise(
    mean = mean(weight),
    sd = sd(weight),
    se = sd(weight) / sqrt(n())
    
  )
print(stats)


# Creating group wise box plots
boxplot(weight ~ group, 
        data = PlantGrowth, 
        main = "PlantGrowth data",
        ylab = "Dried weight of plants", 
        col = "lightgray"
)

# Visualizing/Creating mean plot
install.packages("ggpubr")
library(ggpubr)
ggline(plantgrowth,
       x = "group",
       y = "weight",
       add = c("mean_se", "jitter")
       )

# Running the One-way ANOVA test
anova <- aov(weight ~ group, data = plantgrowth)
summary(anova)
