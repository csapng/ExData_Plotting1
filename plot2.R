## Project 1, JH Exploratory Data

## Grab source file
source("Plot_source.R")

n<-480

##Initiate second plot
png("plot2.png", width = n, height = n)
plot(Electric$date, Electric$Global_active_power, type = "s", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()

