library(readr)
install.packages("dplyr")
install.packages("tidyverse")
library(dplyr)
library(tidyverse)

recensement <- read_delim("Analyse/data/recensement.csv", 
                          delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(recensement)
recensement
#apercue du tableau avec glimpse
glimpse(recensement)

## Le script de select
recensement %>%
select(id, age, sexe, poids)

##L'utilisation de: arrange() et filter()
recensement %>%
  select(id, age, sexe, poids) %>%
arrange(desc(age))

recensement %>%
  select(id, age, sexe, poids) %>%
  arrange(desc(age))%>%
  filter(age >= 34)


