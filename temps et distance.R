#le temps et la distance qu'ils font avant d'arriver à la destination 

dist = c(2, 4, 5, 3, 15, 10, 4, 12, 8)
temp = c(15, 25, 25, 50, 45, 10, 38, 55, 30)
nom = c("Lyn", "Issa", "Ami", "Madou", "Fana", "oumou", "Kadja", "issou", "Ali")
genre = c("F", "H", "F", "H", "F", "F", "F", "H", "H")

plot( dist, temp, main = "distance vs. temps", 
    xlab = "distance (en km)", ylab = "temps (en mn)", col="red", pch=15 )


text(dist, temp+1, labels = nom, col = "blue", )

dist(seq(2,12, by=1 ))

