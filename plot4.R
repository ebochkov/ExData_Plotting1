data = read.table('working-data.txt')
png(filename = "plot4.png")

par(mfrow = c(2,2))

plot(data$Global_active_power, type="l", ylab='Global Active Power', xlab='')

plot(data$Voltage, type="l", ylab='Voltage', xlab='datetime')

x = seq(1, nrow(data))
plot(x, data$Sub_metering_1, col = "black", type = 'l', xlab = '', ylab = 'Energy sub metering')
lines(x, data$Sub_metering_2, col = "red")
lines(x, data$Sub_metering_3, col = "blue")
legend('topright', c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lty = 1, col = c('black', 'red', 'blue'), bty = 'n')

plot(data$Global_reactive_power, type="l", ylab='Global_reactive_power', xlab='datetime')

dev.off()