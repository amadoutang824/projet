# Tri
v <- sample(101:110)
#trier simplement
sort(v)
#trier de façon inversée
sort(v, decreasing = TRUE)

# Trame de données
library(dplyr)
df <- data.frame (id = 1:4, weight = c(20,27,24,22),
                  size = c("small", "large", "medium", "large"))
#trier par weight
arrange(df, weight) #ou encore
df [ order(df$weight), ]

#trier par size, ensuitre par weight
arrange(df, size, weight) #ou encore
df[ order(df$size, df$weight), ]

#tri par colonne dans le data frame, de gauche vers droite
df[ do.call(order, as.list(df)), ]

# Tri inversé
# Trier en inversant la colonne weight
arrange(df, -weight)

# Trier size et ensuite weight de façcon décroissante
arrange(df, size, -weight)
# Trier size de façcon décroissante et ensuite par weight croissant
arrange(df, -xtfrm(size), -weight )






