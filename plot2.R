source('getDataSetFunction.R')

# getDataSet function is defined on the file 'getDataSetFunction'
data <- getDataSet()

# plot 2
png(file='plot2.png', width = 480, height = 480, units = 'px')
plot(data$timestamp, data$Global_active_power, type = 'l', ylab='Global Active Power (Kws)', xlab = "")
dev.off()