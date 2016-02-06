source('HelperFunction.R')

data <- getDataSet()

# plot 4
png(file='plot4.png', width = 480, height = 480, units = 'px')

# Indicates that the plot will be formed as a 2x2 table
par(mfrow = c(2,2))

# top left plot
plot(data$Global_active_power, type = 'l', xaxt = "n", ylab='Global Active Power', xlab = "")
axis(1, at = c(1, as.integer(nrow(data)/2), nrow(data)), labels = c("Thu", "Fri", "Sat"))

# top right plot
plot(data$Voltage, type = 'l', xaxt = "n", ylab='Voltage', xlab = "datetime")
axis(1, at = c(1, as.integer(nrow(data)/2), nrow(data)), labels = c("Thu", "Fri", "Sat"))

# bottom left plot
plot(data$Sub_metering_1, type = 'l', ylab = 'Energy sub metering', xlab = '', xaxt = 'n')
lines(data$Sub_metering_2, type = 'l', col='red')
lines(data$Sub_metering_3, type = 'l', col='blue')
axis(1, at = c(1, as.integer(nrow(data)/2), nrow(data)), labels = c("Thu", "Fri", "Sat"))
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = c(1, 1, 1), col = c('black', 'red','blue'), bty = "n")

# bottom right plot
plot(data$Global_reactive_power, type = 'l', xaxt = "n", ylab='Global_reactive_power', xlab = "datetime")
axis(1, at = c(1, as.integer(nrow(data)/2), nrow(data)), labels = c("Thu", "Fri", "Sat"))

dev.off()