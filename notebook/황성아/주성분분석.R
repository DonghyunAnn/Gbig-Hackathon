data <- read.csv('C:/Users/82102/Desktop/data_final.csv')
head(data)
pca <- princomp(data[,2:20], cor=TRUE)
names(pca)

# 원래
pca1 <- prcomp(data[,2:20], scale=TRUE)
summary(pca1)

plot(pca1, type="l", pch=19, lwd=2, col="red",
     main="Scree Plot")


round(pca1$rotation, 4)
round(scale(data[,2:20]) %*% pca1$rotation,4)
round(pca1$x, 4)
round(pca1$x[,c(1:4)],4)
biplot(pca1,cex=c(0.5,0.75),main="Biplot")

#best
pca2 <- prcomp(data[,c(2,3,6,13:16,18:20)], scale=TRUE)
summary(pca2)

plot(pca2, type="l", pch=19, lwd=2, col="red",
     main="Scree Plot")

library(factoextra)
fviz_eig(pca2)
summary(pca2)
fviz_contrib(pca2, choice="var", axes=1)
fviz_contrib(pca2, choice="var", axes=2)
fviz_contrib(pca2, choice="var", axes=3)


round(pca1$rotation, 3)
round(scale(data[,2:20]) %*% pca1$rotation,3)
round(pca1$x, 3)
round(pca1$x[,c(1:3)],3)
biplot(pca2,cex=c(0.5,0.75),main="Biplot")

data_2 <- data[,c(2,3,6,13,14,15,16,18:20)]
library(FactoMineR)
PCA(data_2, scale.unit = TRUE, ncp = 3, graph = TRUE)
