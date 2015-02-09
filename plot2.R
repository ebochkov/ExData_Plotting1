data = read.table('working-data.txt')
png(filename = "plot2.png")
plot(data$Global_active_power, type="l", ylab='Global Active Power (kilowatts)', xlab='')
dev.off()
