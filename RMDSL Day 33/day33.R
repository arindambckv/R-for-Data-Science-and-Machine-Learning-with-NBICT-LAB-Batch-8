# Importing the dataset
myData <- read.csv("bottle_data.csv")

# Checking for the normality
# Shapiro-Wilk Test
shapiro.test(myData$value)

# One Sample T Test
t.test(x = myData$value, mu = 150)