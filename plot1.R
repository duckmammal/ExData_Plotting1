# Read data table, for the dates of February 1-2, 2007
# Make a red histogram plot of the data
# Store the pdf output


library(dplyr)
library(lubridate)

# Read data table
file<- "household_power_consumption.txt"
df<- read.csv2(file, na.strings = c("?",""), stringsAsFactors = F)

# manipulate our elements
for(i in 3:9) df[,i]<- as.numeric(df[,i])
df$Date <- dmy(df$Date)

# subset the data
df_date<- filter(df, Date == ymd("2007-02-01") | 
                   Date == ymd("2007-02-02)"))

# plot histogram
png(file = "plot1.png")
hist(df_date[,3], col = "red", main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
dev.off()