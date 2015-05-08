## Project 1, JH Exploratory Data

## Grab source file
source("Plot_source.R")

n<-480
##Initiate third plot
png("plot3.png", width = n, height = n)
plot(Electric$date, Electric$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "n")
lines(Electric$date, Electric$Sub_metering_1, col = "black")
lines(Electric$date, Electric$Sub_metering_2, col = "red")
lines(Electric$date, Electric$Sub_metering_3,col = "blue")

legend("topright", lwd = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()

