library(fivethirtyeight)
library(psych)
head(bad_drivers)
bad = bad_drivers
y = bad$insurance_premiums
x1 = bad$perc_no_previous
x2 = bad$perc_speeding
x3 = bad$perc_alcohol
x4 = bad$perc_not_distracted
x5 = bad$num_drivers