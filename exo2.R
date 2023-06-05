#Exo2
view(flights)

#Trie des vols retarder
vol <- filter(flights, dep_delay > 0)
vol_p_ret <- arrange(vol, dep_delay)
view(vol_p_ret)
#Trie des vols partis en premier
vol2 <- filter(flights, dep_delay < 0)
vol_p_p <- arrange(vol2, dep_delay)
view(vol_p_p)

#Trie des vols les plus rapide
vol3 <- filter(flights, arr_delay < 0)
vol_rap <- arrange(vol3, arr_delay)
view(vol_rap)

#Quels vols ont parcouru la plus grande distance
vol4 <- arrange(flights, desc(distance))
view(vol4)
# Lequel a voyagé le plus court
vol4 <- arrange(flights, distance)
view(vol4)

#SELECT()
#Affichage de trois variables
vis_1 <- select(flights, year, month, day)
view(vis_1)
#Afficher tout sauf (year et day)
vis_2 <- select(flights, -(year | day))
view(vis_2)
#Afficher flights en mettant au debut time_hour et air_time
vis_3 <- select(flights, time_hour, air_time, everything())
view(vis_3)
#Afficher d'un coup tous les variables contenants "TIME"
vis_4 <- select(flights, contains('time'))
view(vis_4)
#Afficher d'un coup tous les variables commençant par "dep"
vis_5 <- select(flights, starts_with("dep"))
view(vis_5)





