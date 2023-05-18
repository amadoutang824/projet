library(readr)
library(dplyr)
library(graphics)

smp1 <- read_delim("Analyse/Vidéos/Fun mooc/smp1.csv", 
                   delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(smp1)

str(smp1)
attach(smp1)
barplot(table(smp1$prof))

table(smp1$prof)
barplot(table(smp1$prof))

pie(table(smp1$prof))

sort(smp1$age)
sort(table(smp1$age)) 
hist(sort(smp1$age)), col = "pink", xlab = "age")

help("sort")

smp1%>%
  select(age)%>%
  arrange(age)%>%
  hist(smp1, age)

smp1%>%
  barplot(table(smp1$prof))
  
boxplot(smp1$age~smp1$rs, ylab = "age", xlab = "search sensation")

plot(jitter(smp1$age),jitter(smp1$n.enfant))




