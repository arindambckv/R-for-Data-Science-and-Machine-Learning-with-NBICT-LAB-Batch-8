#demonstration of CLT in R
runif(10)

#generate 10000 number of uniform distribution
r <- runif(10000)

#type and enter r in the console to see the data
hist(r)
meanr <- mean(r)
sdr <- sd(r)

#draw 3 random samples from the distribution
samples1 <- sample(r, 4)
samples2 <- sample(r, 4)
samples3 <- sample(r, 4)

mean(samples1)
mean(samples2)
mean(samples3)

#run a for loop
cl4 <- mean(sample(r,4))

for (i in 1:1000){
  cl4 <- c(cl4, mean(sample(r,4)))
}
  
hist(cl4)

cl10 <- mean(sample(r,10))

for (i in 1:1000){
  cl10 <- c(cl10, mean(sample(r,10)))
}

hist(cl10)





