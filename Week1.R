hw1 <- read.csv(file="Coursera/hw1_data.csv")

#Question 18
mean(hw1[hw1[["Ozone"]]>31&hw1[["Temp"]]>90,]$Solar.R,na.rm = TRUE)
#Question 17
mean(hw1[hw1[["Month"]]==6,]$Temp,na.rm = TRUE)


