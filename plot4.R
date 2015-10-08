# Using df2, the data frame we generated in plot 2.


# plot our png

png("plot4.png")

# change the margins to not inclue the x label and be in a 2x2 grid
par(mar = c(5, 4, 2, 2),
    mfrow = c(2,2))

# repeat plot 2, 
with(df2,plot(x=instant, y=Global_active_power, type = "l", xaxt = 'n',
              ylab = "Global Active Power (kilowatts)", xlab = "") )
axis(1, at=c(1,long/2,long), labels=c("Thr","Fri","Sat"))

# new plot- voltage vs instant
with(df2,plot(x=instant, y=Voltage, type = "l", xaxt = 'n',
              ylab = "Voltage", 
              xlab = "datetime"))
axis(1, at=c(1,long/2,long), labels=c("Thr","Fri","Sat"))


# repeat plot 3
plot(x=df2$instant, y=df2[,7], type = "l", xaxt = 'n',
     ylab = "Energy Sub Metering", xlab = "")
lines(x=df2$instant, y=df2[,8], col = "red")
lines(x=df2$instant, y=df2[,9], col = "blue")

axis(1, at=c(1,long/2,long), labels=c("Thr","Fri","Sat"))

legend("topright", colnames(df2)[7:9], col=c('black', 'red', 'blue'), 
       lty = 1, bty = 'n')

# new plot - oltage vs instant
with(df2,plot(x=instant, y=Global_reactive_power, type = "l", 
              xaxt = 'n', xlab = "datetime"))
axis(1, at=c(1,long/2,long), labels=c("Thr","Fri","Sat"))

dev.off()