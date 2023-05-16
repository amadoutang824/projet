install.packages("nycflights13")
library(nycflights13)
library(tidyverse)

view(flights)

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










