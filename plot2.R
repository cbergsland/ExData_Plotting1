##read data and subset
data <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?")
data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
subsetData <- subset(data, Date =="2007-02-01" | Date =="2007-02-02")

##plot data to .png file
png(filename = "plot2.png", width = 480, height = 480)
plot(subsetData$Time,subsetData$Global_active_power,type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()