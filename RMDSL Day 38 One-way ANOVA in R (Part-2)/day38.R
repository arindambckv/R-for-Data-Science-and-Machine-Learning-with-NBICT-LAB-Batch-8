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

# Tukey multiple pairwise-comparison
TukeyHSD(anova)

# Homogenity of variance
plot(anova, 1)
library(car)
leveneTest(weight ~ group, data = plantgrowth)

# ANOVA test with no assumption of equal variance
oneway.test(weight ~ group, data = plantgrowth)

# Pairwise t-test with no assumption of equal variance
pairwise.t.test(plantgrowth$weight, plantgrowth$group,
                p.adjust.method = "BH", pool.sd = FALSE)

# Checking normal distribution
plot(anova, 2)

# Extracting the residuals
aov_res <- residuals(object = anova)

# Running the Shapiro-WIlk test
shapiro.test(aov_res)

kruskal.test(weight ~ group, data = plantgrowth)
pairwise.wilcox.test(plantgrowth$weight, plantgrowth$group,
                     p.adjust.method = "BH")
