## Project 1, JH Exploratory Data, Plot2.png
##read source file
temp<-tempfile()
fileURL<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"   
download.file(fileURL, temp)
colC<-c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric")
bigElectric<-read.table(unzip(temp), header = T, sep = ";", colClasses = colC, na.strings = "?")

##select rows by date (date = d/m/yyyy")
Electric<-bigElectric[bigElectric$Date == "1/2/2007" | bigElectric$Date == "2/2/2007",]
Electric$date<-strptime(paste(Electric$Date, Electric$Time), format = "%d/%m/%Y %T")

##Initiate second plot
n<-480
png("plot2.png", width = n, height = n)
plot(Electric$date, Electric$Global_active_power, type = "s", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()

