ppois(q = 3, lambda = 5) - ppois(q = 2, lambda = 5)
dpois(x = 3, lambda = 5)

n <- seq(0,5)
n
barplot(dpois(x = n, lambda = 5))

library(visualize)
visualize.pois(stat = 8, lambda = 10, section = "upper")
visualize.pois(stat = c(2,5), lambda = 5, section = "tails")