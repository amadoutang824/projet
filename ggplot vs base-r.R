library(tidyverse)
library(ggplot2)

data()
data("msleep")

head(msleep)
tail(msleep)
dim(msleep)

names(msleep)
?msleep

#Dans R-base
attach(msleep)
plot(bodywt, sleep_total, psch = 20, col = "blue")
grid(col = "red")

#Dans ggplot2
ggplot(msleep, aes(x = bodywt, y = sleep_total)) +
  geom_point(col = "blue")+
  theme_dark()






