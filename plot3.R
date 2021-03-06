source('prepare_working_data.R')

prepare_working_data()

data = read.table(working.data.file.name)

png(filename = "plot3.png")
x = seq(1, nrow(data))
plot(x, data$Sub_metering_1, col = "black", type = 'l', xlab = '', ylab = 'Energy sub metering', xaxt="n")
axis(1, at = c(0, 1440, 2880), labels = c('Thu', 'Fri', 'Sat'))
lines(x, data$Sub_metering_2, col = "red")
lines(x, data$Sub_metering_3, col = "blue")
legend('topright', c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lty = 1, col = c('black', 'red', 'blue'), bty = 'y')
dev.off()
