library(readr)
library(dplyr)
library(tidyverse)
recensement <- read_delim("Analyse/data/recensement.csv", 
                          delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(recensement)
recensement
dim(recensement)

glimpse(recensement)

recensement %>%
  select(id, age, sexe, poids, qualif)
#arranger
recensement %>%
  select(id, age, sexe, poids, qualif)%>%
  arrange(desc(age))
#filter 
recensement %>%
  select(id, age, sexe, poids, qualif)%>%
  arrange(desc(age))%>%
  filter(age >= 34)

#mutate
recensement %>%
  select(id, age, sexe, poids, qualif)%>%
  arrange(desc(age))%>%
  mutate(sur_poids = poids + 5)

#Histogramme

hist(recensement$age, main = "histogramme de l'age",
     col = "pink", las = 1,
    
     )

plot(sort(recensement$age))




  