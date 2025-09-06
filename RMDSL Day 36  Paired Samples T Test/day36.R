#Paired sample t test in R
#importing the data set
mydataset <- read.csv("paired-samples-t-test.csv")

#calculating the difference
diffs <- mydataset$carb - mydataset$carb_protein

#checking if the differences are normally distributed
shapiro.test(diffs)

#p=0.7797 which is >0.05, so the data set is normally distributed
#if p<0.05, then the data set is not normally distributed

#checking for outliers using boxplot
boxplot(diffs)

#running the paired t test
t.test(x = mydataset$carb, y = mydataset$carb_protein, paired = TRUE)

#as p=0.000004, which is <0.05, the null hypothesis is rejected and alternate hypothesis is accepted

#running Wilcoxon signed rank test
wilcox.test(x = mydataset$carb, y = mydataset$carb_protein, paired = TRUE)

#if your dataset has outliers, then go for Wilcoxon test, otherwise t test

#calculating mean and sd
mean(mydataset$carb)
sd(mydataset$carb)
mean(mydataset$carb_protein)
sd(mydataset$carb_protein)

#Effect size calculation using Cohen's d
#0.2 - small, 0.5- medium, 0.8- large
install.packages("effsize")
library(effsize)
cohen.d(mydataset$carb_protein, mydataset$carb, paired = TRUE)

# A paired- sample T test was used to determine wheather their was
# a statistically significant mean difference between the distance ran
# when participants imbibed carbohydrate protein drink
# compared to a carbohydrate only drink. No outliers were detected. The
# assumption of normality was not violated, as assessed by Shapiro wilks test
# (p = 0.78). Participants ran further when imbibed in the
# carbohydrate protein drink (mean = 11.30 km sd = 0.71) as opposed to only 
# carbohydrate drink (mean = 11.17, sd = 0.73).
# A statistically significant mean increase of 0.14 km (95% confidence, -0.09 -0.18
#  t(19) = -6.35 , p<=0.001, cohen's d estimate = 0.187)