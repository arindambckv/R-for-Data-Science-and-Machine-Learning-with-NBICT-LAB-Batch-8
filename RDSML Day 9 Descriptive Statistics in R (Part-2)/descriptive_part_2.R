#descriptive statistics part 2
library(psych)


attach(nycflights13::flights)

#lets look at the first 6 records using head() function
head(nycflights13::flights)
distance
summary(distance)
describe(distance)
demo = cbind(arr_delay, dep_delay, distance)
describe(demo)

#introducing the colnames() function
colnames(demo) = c('Arrival delay', 'departure delay', 'distance travelled')
describe(demo)

#introducing the hist() function
dep_delay
hist(dep_delay)

#how to group descriptive statistics
head(nycflights13::flights)
carrier
summary(carrier)
carrierfact = factor(carrier)
summary(carrier)
summary(carrierfact)

describeBy(distance, group = carrier)

# two levels of aggregation
aggregate(distance, by = list(carrier, month), FUN = mean, na.rm = TRUE)
aggregate(distance, by = list(carrier, month), FUN = sd, na.rm = TRUE)
