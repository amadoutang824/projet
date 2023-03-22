
df <- data.frame(sexe = c("f","f","h","h"), age = c(32, 51, 29,35), blond = c(FALSE, TRUE, TRUE, FALSE))
df

#Propriété et création

str(df)     #Pour voir les diférents types des éléments du tableau 
length(df)  #Cette fonction renvoie le nombre d'élément de la liste 
names(df)   #Pour afficher les noms des différentes colonnes
nrow(df)    #Pour afficher le nombre de lignes du tableau
ncol(df)    #Pour afficher le nombre de colonne du tableau
dim(df)     #Cette fonction permet d'afficher les lignes et les colonnes du tableau 

row.names(df) <- c("Fatou", "Nana", "Modibo", "Alpha")
df

#Indexation

df[1]       #Pour indexer la première colonne du tableau
df[[1]]     #Pour indexer le numero de colonne saisie
df$age      #Pour indexer la colonne de l'age

df[3,2]     #Pour indexer la 3ème ligne et la 2ème colonne (l'age de modibo)
df["Modibo", "age"]           #Pour indexer également l'age de modibo
df[c(F, F, T, F), c(F, T, F)] #Pour indexer également l'age de modibo 

df[1]                         #Pour indexer toute la 1ère colonne
df[1:2,]                      #Pour indexer la 1ère à la deuxième ligne seulement
df[,c("sexe", "blond")]       #Pour indexer la 1ère à la deuxième ligne seulement
df[2,]                        #Pour indexer la 2ème ligne seulement




