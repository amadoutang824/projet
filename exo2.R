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

