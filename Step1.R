# install.packages("fivethirtyeight")
library(fivethirtyeight)
library(psych)
head(bad_drivers)
bad = bad_drivers
# Car Insurance Premiums ($)
y = bad$insurance_premiums
summary(y)
sd(y)
# Percentage Of Drivers Involved In Fatal Collisions Who Had Not Been Involved In Any Previous Accidents
x1 = bad$perc_no_previous
summary(x1)
sd(x1)
summary(lm(y~x1))
plot(x1,y)
t.test(x1,y)
corr.test(bad["perc_no_previous"], bad["insurance_premiums"])
# Percentage Of Drivers Involved In Fatal Collisions Who Were Speeding
x2 = bad$perc_speeding
summary(x2)
sd(x2)
summary(lm(y~x2))
plot(x2,y)
t.test(x2, y)
corr.test(bad["perc_speeding"], bad["insurance_premiums"])
# Percentage Of Drivers Involved In Fatal Collisions Who Were Alcohol-Impaired
x3 = bad$perc_alcohol
summary(x3)
sd(x3)
summary(lm(y~x3))
plot(x3,y)
t.test(x3, y)
corr.test(bad["perc_alcohol"], bad["insurance_premiums"])
#Percentage Of Drivers Involved In Fatal Collisions Who Were Not distracted
x4 = bad$perc_not_distracted
summary(x4)
summary(lm(y~x4))
plot(x4,y)
t.test(x4,y)
corr.test(bad["perc_not_distracted"],bad["insurance_premiums"])
#Number of drivers involved in fatal collisions per billion miles
x5 = bad$num_drivers
summary(x5)
sd(x5)
summary(lm(y~x5))
plot(x5,y)
t.test(x5,y)
corr.test(bad["num_drivers"],bad["insurance_premiums"])

