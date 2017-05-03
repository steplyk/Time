rm(list=ls())

setwd("~/Google Drive/AS654 -Time/ASTIME")
library(fivethirtyeight)
library(psych)
library(car) 
library(Hmisc) 
library(dplyr)
library(ggplot2)

#head(bad_drivers)
bad = bad_drivers
colnames(bad)[2:8] <- c("num", "speed","alc","notdist","noprev","prem","loss")

data = read.csv("2010 data.csv")
names(data)
d = data[,c(1,2,12,13,14,15,21)]

total = merge(bad,d,by.y ="state")
colnames(total)[2:14] <- c("num", "speed","alc","notdist","noprev","prem",
                           "loss","total","speeding","interstate","vehicles",
                           "pass","unrestrain")
head(total)

bad2 = read.csv("bad2.csv")
bad2 = bad2[,c(2,10,11)]
new = merge(total,bad2,by.y ="state")
colnames(new)[15:16] <- c("temp","precip")
head(new)
summary(lm(loss ~ total+noprev+alc+interstate+vehicles+pass+unrestrain+temp, data=new))
fit=lm(loss ~ total+noprev+alc+interstate+vehicles+pass+unrestrain+temp, data=new)

anova(fit)

hist(residuals(fit))
par(mfrow = c(2,2))
plot(fit)

par(mfrow = c(1,1))
plot(new$state, new$loss, data=new)

as.data.frame(new)
barplot(new$loss,names.arg=new$state, yaxp=c(0,200, 20), 
     las = 2, cex.names=0.7)


ggplot(data = new) + 
  geom_point(mapping = aes(x = state, y = loss, size=total))


ggplot(data = new) + 
  geom_point(mapping = aes(x = state, y = pass, size=loss, color=loss))+
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  labs(y="% of Passenger Vehicles", x="", title="Most Significant Variable (pass)") +
  guides(size=FALSE)
ggplot(data = new) + 
  geom_point(mapping = aes(x = state, y = interstate, size=loss, color=loss)) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  labs(y="# Speeding on Interstate", x="", 
       title="Least Significant Variable (interstate)") +
  guides(size=FALSE)



summary(new$loss)
sd(new$loss)




