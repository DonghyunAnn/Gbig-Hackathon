library(cluster)
df <- read.csv('D:/사용자/다운로드/data_pca.csv')

rownames(df) <- df$행정구
df.scal <- scale(df[-1])
pam.result <- pam(df.scal, k= 3, stand = T)
clusplot(pam.result, main = 'K-medoids',span = T,labels = 2,cex=3)
pam.result$clustering
pam.result$silinfo

