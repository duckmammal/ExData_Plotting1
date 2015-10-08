# Using df_date, the data frame we generated in plot 1.

# manipulate our data frame a bit
long<- dim(df_date)[1]
df2<- mutate(df_date, Weekday = weekdays(df_date$Date), instant = 1:long)

# plot our png

png("plot2.png")

# change the margins to not inclue the x label
par(mar = c(3, 4, 2, 1))

with(df2,plot(x=instant, y=Global_active_power, type = "l", xaxt = 'n',
              ylab = "Global Active Power (kilowatts)") )

axis(1, at=c(1,long/2,long), labels=c("Thr","Fri","Sat"))

dev.off()