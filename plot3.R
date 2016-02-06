source('getDataSetFunction.R')

# getDataSet function is defined on the file 'getDataSetFunction'
data <- getDataSet()

# plot 3
png(file='plot3.png', width = 480, height = 480, units = 'px')
plot(data$timestamp, data$Sub_metering_1, type = 'l', ylab = 'Energy sub metering', xlab = '')
lines(data$timestamp, data$Sub_metering_2, type = 'l', col='red')
lines(data$timestamp, data$Sub_metering_3, type = 'l', col='blue')
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = c(1, 1, 1), col = c('black', 'red','blue'))
dev.off()