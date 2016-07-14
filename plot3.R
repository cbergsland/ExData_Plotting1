##read data and subset
data <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?")
data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
subsetData <- subset(data, Date =="2007-02-01" | Date =="2007-02-02")

##plot data to .png file using plot and lines and specifying parameters, including legend
png(filename = "plot3.png", width = 480, height = 480)
plot(subsetData$Time,subsetData$Sub_metering_1, type="l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(subsetData$Time,subsetData$Sub_metering_2, col = "red")
lines(subsetData$Time,subsetData$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black","red","blue"),lty = 1)
dev.off()


