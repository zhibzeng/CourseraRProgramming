# lapply function usage lapply just return list as result
x <- list(a = 1:5, b = rnorm(10), c = rnorm(20,1), d = rnorm(100,5))
lapply(x,mean)

x<- list(a = matrix(1:6,2,3), b = matrix(1:4,2,2))
lapply(x,FUN = function(x){mean(x)})
lapply(x,function(elt){elt[,1]})

# sapply is a functon most likely with lapply, it will simplify the result of 
# lapply
x <- list(a = 1:5, b = rnorm(10), c = rnorm(20,1), d = rnorm(100,5))
sapply(x,mean)

# apply 
x <- matrix(rnorm(200),20,10)
apply(x,2,mean)
apply(x,1,mean)

rowSums <- apply(x,1,sum)
rowMeans <- apply(x,1,mean)
colSums <- apply(x,2,sum)
colMeans <- apply(x,2,mean)

a <- array(rnorm(2*2*10),c(2,2,10))

# split function
x <- c(rnorm(10),runif(10),rnorm(10,1))
f <- gl(3,10)
split(x,f)
# split a data frame 
library(datasets)
head(airquality)
s <- split(airquality,airquality$Month)
lapply(s,function(x) colMeans(x[,c("Ozone","Solar.R","Wind")]))
sapply(s,function(x) colMeans(x[,c("Ozone","Solar.R","Wind")]))
lapply(s,function(x) colMeans(x[,c("Ozone","Solar.R","Wind")],na.rm = TRUE))
sapply(s,function(x) colMeans(x[,c("Ozone","Solar.R","Wind")],na.rm = TRUE))

