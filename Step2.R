library(fivethirtyeight)
library(psych)
<<<<<<< HEAD
head(bad_drivers)
bad = bad_drivers
y = bad$insurance_premiums
x1 = bad$perc_no_previous
x2 = bad$perc_speeding
x3 = bad$perc_alcohol
x4 = bad$perc_not_distracted
x5 = bad$num_drivers
=======

head(bad_drivers)
bad = bad_drivers

y = bad$insurance_premiums
hist(y)

x1 = bad$perc_no_previous
t.test(x1,y)
corr.test(bad["perc_no_previous"], bad["insurance_premiums"])
l1 = summary(lm(y~x1))
l1
hist(residuals(l1))
plot(residuals(l1) ~ x1, data = bad, pch= 19, main="Plot of residuals of x1 vs x1")

x2 = bad$perc_speeding
t.test(x2, y)
corr.test(bad["perc_speeding"], bad["insurance_premiums"])
l2 = summary(lm(y~x2))
l2
hist(residuals(l2))
plot(residuals(l2) ~ x2, data = bad, pch= 19, main="Plot of residuals of x2 vs x2")

x3 = bad$perc_alcohol
t.test(x3, y)
corr.test(bad["perc_alcohol"], bad["insurance_premiums"])
l3 = summary(lm(y~x3))
l3
hist(residuals(l3))
plot(residuals(l3) ~ x3, data = bad, pch= 19, main="Plot of residuals of x3 vs x3")

x4 = bad$perc_not_distracted
t.test(x4,y)
corr.test(bad["perc_not_distracted"],bad["insurance_premiums"])
l4 = summary(lm(y~x4))
l4
hist(residuals(l4))
plot(residuals(l4) ~ x4, data = bad, pch= 19, main="Plot of residuals of x4 vs x4")

x5 = bad$num_drivers
t.test(x5,y)
corr.test(bad["num_drivers"],bad["insurance_premiums"])
l5 = summary(lm(y~x5))
l5
hist(residuals(l5))
plot(residuals(l5) ~ x5, data = bad, pch= 19, main="Plot of residuals of x5 vs x5")

l6 = summary(lm(y~x1+x2+x3+x4, data=bad))
l6
hist(residuals(l6))

l7 = summary(lm(y~x1+x2+x3+x4+x5, data=bad))
l7
hist(residuals(l7))









>>>>>>> origin/master
