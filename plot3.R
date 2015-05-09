## Project 1, JH Exploratory Data
##read source file
temp<-tempfile()
fileURL<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"   
download.file(fileURL, temp)
colC<-c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric")
bigElectric<-read.table(unzip(temp), header = T, sep = ";", colClasses = colC, na.strings = "?")

##select rows by date (date = d/m/yyyy")
Electric<-bigElectric[bigElectric$Date == "1/2/2007" | bigElectric$Date == "2/2/2007",]
Electric$date<-strptime(paste(Electric$Date, Electric$Time), format = "%d/%m/%Y %T")

##Initiate third plot
n<-480
png("plot3.png", width = n, height = n)
plot(Electric$date, Electric$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "n")
lines(Electric$date, Electric$Sub_metering_1, col = "black")
lines(Electric$date, Electric$Sub_metering_2, col = "red")
lines(Electric$date, Electric$Sub_metering_3,col = "blue")

legend("topright", lwd = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()

