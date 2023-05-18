# Exo
view(flights)

# # Trouver tous les vols qui :

# Avait un retard d'arrivée de deux heures ou plus
vol_ret <- filter(flights, arr_delay > 120)
# Avait un retard d'arrivée comprise entre 2H et 2H 05mn 
vol_ret <- filter(flights, arr_delay > 120 & arr_delay <= 125)          
view(vol_ret)
view(arrange(vol_ret, arr_delay))


#Vol pour Houston ( IAH ou HOU)
vol_HOU <- filter(flights, dest == "HOU")
#Vol de LGA à Hou ( IAH ou HOU)
vol_HOU <- filter(flights, dest == "HOU" & origin == "LGA")
view(vol_HOU)

#Étaient exploités par United, American ou Delta
UA_DL <- filter(flights, carrier == "UA" | carrier == "DL")
UA_DL1 

#Départ en été (juillet, août et septembre)
dep_month <- filter(flights, month >= 7 & month <=9)
view(dep_month)

#Arrivé avec plus de deux heures de retard, mais n'est pas parti en retard
ret_2plus <- filter(flights, arr_delay >= 120 & dep_delay <= 0)
view(ret_2plus)

#Ont été retardés d'au moins une heure
ret_1h <- filter(flights, dep_time <= 60)
view(ret_1h)
