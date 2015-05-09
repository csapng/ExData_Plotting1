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

##Initiate first plot
n<-480
png("plot1.png", width = n, height = n)
hist(Electric$Global_active_power, xlab = "Global Active Power (kilowatts)", col = "red1", main = "Global Active Power")
dev.off()

