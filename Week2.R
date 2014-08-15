x <- c('a','b','c','d')

# for structures
for (i in 1:4){
  print(i)
}

for (i in seq_along(x)){
    print(x[i])
}

for(i in x){
    print(i)
}

num <- 10
while(num>0){
  print(num)
  num <- num-1
}

for(i in 1:100){
  if(i<20){
    # skip the first 20
    next
  }
}
}

# R function 
add2 <- function(x=0,y=0){
  return(x+y)
}

above10 <-function(x){
  use <- x>10
    x[use]
}

dfmean <- function(x){
  if(is.data.frame(x)){
    r <- nrow(x)
    col <- ncol(x)
    colmean <- numeric(col)
    rowmean <- numeric(r)
    print('every row mean:')
    for(i in 1:r){
      rowmean[i] <- (sum(df[i,])/col)
    }
    print(rowmean)
    print('every col mean:')
    for(i in 1:col){
      colmean[i] <- mean(df[[names(df)[i]]])
    }
    colmean
    
  }else{
    print('Warning: please use dataframe as input !')
  }
}

Sys.Date()
Sys.time()
unclass(as.Date('1970-01-01'))
unclass(as.Date('1970-01-02'))
x <- Sys.time()
p  <- as.POSIXlt(x)
names(unclass(p))
p$mon
?strptime()
