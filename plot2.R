source('HelperFunction.R')

data <- getDataSet()

# plot 2
png(file='plot2.png', width = 480, height = 480, units = 'px')
plot(data$Global_active_power, type = 'l', xaxt = "n", ylab='Global Active Power (Kws)', xlab = "")
axis(1, at = c(1, as.integer(nrow(data)/2), nrow(data)), labels = c("Thu", "Fri", "Sat"))
dev.off()