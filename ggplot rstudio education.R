library(readr)
library(readxl)
library(tidyverse)

X2008 <- read_csv("Analyse/2008.csv")
View(X2008)
dim(X2008)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy, color = class))

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = class)) + 
  geom_smooth(data = filter(mpg, class == "suv"), se = FALSE)

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut))

str(diamonds)
view(diamonds)

ggplot(data = table1) +
  geom_histogram(mapping = aes(x = cases))

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, colour = cut))
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = cut))
