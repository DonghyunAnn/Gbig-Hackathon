# 상관분석
data <- read.table("/data.txt",header = T, sep="\t")
head(data)
install.packages("psych")
library(psych)
pairs.panels(data)
