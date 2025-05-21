# descriptive statistics using the psych package
installed.packages("psych")
install.packages("psych")
library(psych)
data()
AirPassengers
BOD


# using the New York airport flight data
install.packages("nycflights13")
library(nycflights13)
nycflights13
attach(nycflights13::flights)
attach(nycflights13::airports)

#lets look at the first six records using the head() function
head(nycflights13::flights)
summary(distance)
describe(distance)
describe(distance)
demo = cbind(arr_delay, dep_delay, distance)
demo
describe(demo)
