## read data and subset
data <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
subsetData <- subset(data, Date =="2007-02-01" | Date =="2007-02-02")

##plot histogram to a .png file
png(filename = "plot1.png", width = 480, height = 480)
hist(subsetData$Global_active_power, xlab = "Global Active Power (kilowatts)", main = "Global Active Power", col ="red")
dev.off()