source('HelperFunction.R')

data <- getDataSet()

# plot 3
png(file='plot3.png', width = 480, height = 480, units = 'px')
plot(data$Sub_metering_1, type = 'l', ylab = 'Energy sub metering', xlab = '', xaxt = 'n')
lines(data$Sub_metering_2, type = 'l', col='red')
lines(data$Sub_metering_3, type = 'l', col='blue')
axis(1, at = c(1, as.integer(nrow(data)/2), nrow(data)), labels = c("Thu", "Fri", "Sat"))
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = c(1, 1, 1), col = c('black', 'red','blue'))
dev.off()