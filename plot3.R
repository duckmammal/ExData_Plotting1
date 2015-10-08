# Using df2, the data frame we generated in plot 2.

# plot our png

png("plot3.png")

# change the margins to not inclue the x label
par(mar = c(3, 4, 2, 1))

# plot our 3 data sets
plot(x=df2$instant, y=df2[,7], type = "l", xaxt = 'n',
              ylab = "Energy Sub Metering")
lines(x=df2$instant, y=df2[,8], col = "red")
lines(x=df2$instant, y=df2[,9], col = "blue")

#add an axis
axis(1, at=c(1,long/2,long), labels=c("Thr","Fri","Sat"))

#add a legend
legend("topright", colnames(df2)[7:9], col=c('black', 'red', 'blue'), lty = 1)

dev.off()