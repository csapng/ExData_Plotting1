## Project 1, JH Exploratory Data

## Grab source file
source("Plot_source.R")

n<-480
##Initiate fourth plot
png("plot4.png", width = n, height = n)
par(mfcol = c(2,2))
plot(Electric$date, Electric$Global_active_power, type = "s", xlab = "", ylab = "Global Active Power (kilowatts)") ##1 PLOT

plot(Electric$date, Electric$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "n") ##2 PLOT
lines(Electric$date, Electric$Sub_metering_1, col = "black")
lines(Electric$date, Electric$Sub_metering_2, col = "red")
lines(Electric$date, Electric$Sub_metering_3,col = "blue")
legend("topright", lwd = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n", cex = .5)

plot(Electric$date, Electric$Voltage, xlab = "datetime", ylab = "Voltage", type = "l") ## 3 PLOT

plot(Electric$date, Electric$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type = "l", yaxt = "n")  ## 4 PLOT
axis(side = 2, tick = T, labels = T, cex.axis = 0.7)
dev.off()

