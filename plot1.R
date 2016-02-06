source('getDataSetFunction.R')

# getDataSet function is defined on the file 'getDataSetFunction'
data <- getDataSet()
# plot 1
png(file='plot1.png', width = 480, height = 480, units = 'px')
hist(data$Global_active_power, col='red', main='Global Active Power', xlab='Global Active Power (Kws)')
dev.off()