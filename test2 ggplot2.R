library(tidyverse)
library(palmerpenguins)
library(ggplot2)

penguins
#Montrer le nombre des espèces de la table penguins 
table(penguins$species)

#Visualiser le nombre d'espèce dans le tableau penguins
ggplot(penguins, aes(x = species)) +
  geom_bar()
#Visualiser le nombre d'espèce dans le tableau penguins en facteur organiser
ggplot(penguins, aes(x = fct_infreq(species) )) +
         geom_bar()

#Visualiser la masse de corps (body_mass_g) penguins avec l'histogramme en utilisant l'argument largeur binaire =400 
ggplot(penguins, aes(x = body_mass_g)) +
  geom_histogram(binwidth = 400)
#Visualiser la masse de corps (body_mass_g) penguins avec geom_density
ggplot(penguins, aes(x = body_mass_g)) +
  geom_density()

#Visualiser le nombre d'espèce sur l'axe des 'y' dans le tableau penguins en facteur organiser
ggplot(penguins, aes(y = fct_infreq(species)) ) +
  geom_bar()




