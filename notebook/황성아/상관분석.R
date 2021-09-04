# 상관분석
data <- read.table("C:/Users/user/Desktop/data.txt",header = T, sep="\t")
head(data)
install.packages("psych")
library(psych)
pairs.panels(data)