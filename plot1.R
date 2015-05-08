## Project 1, JH Exploratory Data

## Grab source file
source("Plot_source.R")

n<-480
##Initiate first plot
png("plot1.png", width = n, height = n)
hist(Electric$Global_active_power, xlab = "Global Active Power (kilowatts)", col = "red1", main = "Global Active Power")
dev.off()

