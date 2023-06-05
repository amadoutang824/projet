library(tidyverse)
install.packages("palmerpenguins")
library(palmerpenguins)

str(penguins)
penguins
view(penguins)

table(penguins$island)
count(penguins)
plot(count(penguins))

ggplot(data = penguins)
ggplot(data = penguins, 
       mapping = aes(x = flipper_length_mm, y = body_mass_g)
       )

ggplot(data = penguins, 
       mapping = aes(x = flipper_length_mm, y= body_mass_g)
       ) +
  geom_point()
#Appliquons les couleurs aux espèces
ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g,
       color = species))+ 
         geom_point() +
         geom_smooth(method = "lm")
    
ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g,
                ))+ 
  geom_point(mapping = aes(color = species)) +
  geom_smooth(method = "lm")


ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g, color = island)
) +
  geom_point() +
  geom_smooth(se = FALSE)
