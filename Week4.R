# Simulation 
# x1 is equal x2
set.seed(1)
x1 <- rnorm(5)
set.seed(1)
x2 <- rnorm(5)

# simulation from following liner model 
# y = b0 + b1x + e
set.seed(20)
x <- rnorm(100)
e <- rnorm(100,0,2)
y <- 0.5 + 2 * x + e
plot(x,y)
# bino
set.seed(20)
x <- rnbinom(100,1,0.5)
e <- rnorm(100,0,2)
y <- 0.5 + 2 * x + e
plot(x,y)

# sample
sample(1:10 ,4)
sample(1:10 ,10,replace = TRUE)

system.time(readLines("http://www.jhsph.edu"))
system.time(rnorm(1000,2,3))
