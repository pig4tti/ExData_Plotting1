source('getDataSetFunction.R')

# getDataSet function is defined on the file 'getDataSetFunction'
data <- getDataSet()

# plot 4
png(file='plot4.png', width = 480, height = 480, units = 'px')

# Indicates that the plot will be formed as a 2x2 table
par(mfrow = c(2,2))

# top left plot
plot(data$timestamp, data$Global_active_power, type = 'l', ylab='Global Active Power', xlab = "")

# top right plot
plot(data$timestamp, data$Voltage, type = 'l', ylab='Voltage', xlab = "datetime")

# bottom left plot
plot(data$timestamp, data$Sub_metering_1, type = 'l', ylab = 'Energy sub metering', xlab = '')
lines(data$timestamp, data$Sub_metering_2, type = 'l', col='red')
lines(data$timestamp, data$Sub_metering_3, type = 'l', col='blue')
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = c(1, 1, 1), col = c('black', 'red','blue'), bty = "n")

# bottom right plot
plot(data$timestamp, data$Global_reactive_power, type = 'l', ylab='Global_reactive_power', xlab = "datetime")

dev.off()