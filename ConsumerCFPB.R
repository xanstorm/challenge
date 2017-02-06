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
#I resorted to Excel for analysis. I am still learning to code in R.
#Top ten financial institutions accounted for 52% of the complaints. There were 4074 banks, mortgage companies, debt collector,
#and other institutions reported to the CFPB.  Below are the top 10 banks reported most frequently to the CFPB.
#1	Bank of America - 63K complaints
#2	Wells Fargo & Company - 51K complaints
#3	Equifax
#4	Experian
#5	JPMorgan Chase & Co.
#6	TransUnion Intermediate Holdings, Inc.
#7	Citibank
#8	Ocwen
#9	Capital One
#10	Nationstar Mortgage
##
#How consumer contact CFPB
#Lead Source	Total
#Email	          348
#Fax	        10,217
#Phone	        49,470
#Postal mail    45,601
#Referral      127,188
#Web	       477,582
#(blank)	     1
#Grand Total	710,407

#Below is a table showing the number of complaints from July, 2013-Sep, 2015. 
# It is apparent that a lot of data is missing. There should be data from 2011
# and the numbers starting in June, 2015 are doubtlessly wrong. Lastly, there
# are no data from June, 2015 to the present. Nonetheless, the numbers we do have 
# show a moderate and bumpy increase.
## The average is 2849 and standard deviation is 643 complaints per month.

# It would be interesting to investigate what kind of financial institution garnered the most
# complaints in percent terms. I hypothesize that debt collectors are at or near the top of those
# that people complain about the most.

# Were time and lack of R skill no object, I would have liked to look at zip codes and loan complaints. It
# would be interesting to get the demographics of the zip code and then see what the correlation between
# number of loan complaints and demographics by zip code are.

# I would also have liked to look at the data from a time series point of view and question if the financial
# instittutions' complaints are trending up, down, or flat over the months to determine if CFPB is having a 
# positive effect on reigning in the bad behavior of some financial institutions.
Jul-13 Count	809
Aug-13 Count	2436
Sep-13 Count	2423
Oct-13 Count	2341
Nov-13 Count	2350
Dec-13 Count	2347
Jan-14 Count	3150
Feb-14 Count	3369
Mar-14 Count	3358
Apr-14 Count	3463
May-14 Count	2988
Jun-14 Count	3099
Jul-14 Count	3312
Aug-14 Count	3242
Sep-14 Count	2992
Oct-14 Count	3208
Nov-14 Count	2817
Dec-14 Count	2864
Jan-15 Count	3153
Feb-15 Count	3152
Mar-15 Count	3617
Apr-15 Count	3294
May-15 Count	1732
Jun-15 Count	9
Jul-15 Count	4
Aug-15 Count	5
Sep-15 Count	1
