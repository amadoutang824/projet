library(readr)
recensement <- read_delim("Analyse/data/projet/recensement.csv", 
                          delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(recensement)

recensement
nrow(recensement)
ncol(recensement)
dim(recensement)
summary(recensement)

hist(recensement$age, main = "Le recensement", xlab = "Age",
     ylab = "Quantité", col = "pink")
h <- hist(recensement$age, col = "pink")
points(h$mids, h$counts, lwd=3, psch=19)
lines(h$mids, h$counts, lwd=3)
