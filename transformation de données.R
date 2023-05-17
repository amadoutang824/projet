install.packages("nycflights13")
library(nycflights13)
library(tidyverse)

view(flights)
str(flights)

#filtrage par moi et par jour
filter(flights, month == 1, day ==1)
jan1 <- filter(flights, month == 1, day ==1)
view(jan1)

(dec25 <- filter(flights, month == 12, day == 25))
view(dec25)

#Filtrage avec les fonctions logiques les vols entre 11e moi ou 12e moi
nov_dec <- filter(flights, month == 11 | month == 12)
view(nov_dec)

#filtrage des vols qui n'ont pas été rétarder
arv_dep <- filter(flights, !(arr_delay > 120 | dep_delay > 120))
view(arv_dep)
arv_dep2 <- filter(flights, arr_delay <= 120, dep_delay <= 120)
view(arv_dep2)

#vol retarder de 2H
vol_ret <- filter(flights, arr_delay >= 2)
vol_ret

#tous les vols pour houston (IAH ou HOU)
vol_houston <- filter(flights, !(dest == "IAH" | dest == "HOU"))
vol_houston
view(vol_houston)

#Arranger les lignes avec arrange()
arrange(flights, desc(dep_delay))

#Trier les vols premiers et les plus rétarder 
vol_pr <- arrange(flights, arr_delay)
view(vol_pr)
vol_ret <- arrange(flights, desc(arr_delay))
view(vol_ret) 

#Selection de données avec la fonction select()
three <- select(flights, year, month, day)
three
view(three)

#selectionner tous les colonnes exceptées (year à day)
select(flights, -(year:day))

#selectionner tous les colonnes contenants "delay"
select(flights, contains("delay"))

##selectionner tous les colonnes commençant par "time"
select(flights, starts_with("time"))
##selectionner tous les colonnes commençant par "time"
select(flights, ends_with("time"))

flights%>%
  select(year, month, day, carrier)%>%
  filter(flights, carrier == "UA")
#selectionner et filtrer pour carrier = "UA"
car_UA <- filter(flights, carrier == "UA")%>%
  select(year, month, day, carrier)
view(car_UA)

#Renommer une colonne avec la fonction rename()
rename(flights, transporteur = carrier)

#selectionner les variables qu'on souhaite mettre à l'avant
select(flights, origin, dest, carrier, everything())


#Selection et Ajout de nouvelles colonnes dans le tableaux 
flights_sm1 <- select(flights, year, month, day, ends_with("delay"),
       distance, air_time 
       )
mutate(flights_sm1, 
       gain = dep_delay - arr_delay,
       speed = distance / air_time
       )
flights_sm1






