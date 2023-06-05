#Exo ggplot2
penguins

#Exo1 :Visualiser le nombre d'espèce sur l'axe des 'y' dans le tableau penguins en facteur organiser
ggplot(penguins, aes(y = fct_infreq(species)) ) +
  geom_bar()

#Exo2:
ggplot(penguins, aes(x = species)) +
  geom_bar(color = "red")

ggplot(penguins, aes(x = fct_infreq(species))) +
  geom_bar(fill = "pink")

#Exo3: creation d'histogramme avec la table diamonds et la variable carat
table(diamonds$cut)

ggplot(diamonds, aes(x = carat))+
  geom_histogram(binwidth = 1, color = "red")


