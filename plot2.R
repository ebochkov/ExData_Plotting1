source('prepare_working_data.R')

prepare_working_data()

data = read.table(working.data.file.name)

png(filename = "plot2.png")
plot(data$Global_active_power, type="l", ylab='Global Active Power (kilowatts)', xlab='', xaxt="n")
axis(1, at = c(0, 1440, 2880), labels = c('Thu', 'Fri', 'Sat'))
dev.off()
