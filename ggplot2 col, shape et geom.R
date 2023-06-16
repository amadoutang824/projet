library(tidyverse)
library(ggplot2)

data()
data("msleep")
attach(msleep)
summary(msleep)

#Sans la couleur aux "vore"
ggplot(msleep, aes(x = sleep_rem, y = sleep_total))+
  geom_point(size = 3)

#Avec la couleur aux "vore"
ggplot(msleep, aes(x = sleep_rem, y = sleep_total,
                   col = vore))+
  geom_point(size = 3)

#Avec la forme et la couleur aux "vore"
ggplot(msleep, aes(x = sleep_rem, y = sleep_total,
                   col = vore, shape = vore))+
  geom_point(size = 3)

#Avec la forme et la couleur brainwt aux "vore"
ggplot(msleep, aes(x = sleep_rem, y = sleep_total,
                   col = brainwt, shape = vore))+
  geom_point(size = 3)

#Quelques geom qui à découvrir
gg <- ggplot(msleep, aes(x = sleep_rem, y = sleep_total,
                         col = vore, shape = vore))
gg+geom_blank()
gg+geom_jitter()
gg+geom_step()
gg+geom_line(size = 2)





