setwd("/Users/stephenhobbs1/Data science/DataChallenge")
conData<-read.csv("Consumer_Complaints.csv", stringsAsFactors = FALSE, header = TRUE)
require(plyr)
library(plyr)
library(ggplot2)

str(conData)
head(conData)
nameFreq<-table(conData$Company)
most.common <- function(x) {
        count <- sapply(unique(x), function(i) sum(x==i, na.rm=TRUE))
        unique(x)[which(count==max(count))]
}
most.common(conData$Company)
#Bank of America
conCount<-count(conData,'Company')
conData$Company[1:10]
tt <- table(nameFreq)
conSort<-sort(conData$Company)
conSort[1:10]
head(conSort)
str(conSort)
hist(conData$Company)
d <- density(nameFreq)
plot(d, main="Kernel Density of Financial Institutions")
polygon(d, col="red", border="blue") 
rank(nameFreq)
order(conData$Company, decreasing = F)
conSort<-conData[order(conData$Company),]
conSort
rank(conData$Company)
frequency(conData$Company)
