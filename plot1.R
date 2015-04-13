source('prepare_working_data.R')

prepare_working_data()

data = read.table(working.data.file.name)
png(filename = "plot1.png")
hist(data$Global_active_power, col = 'red', main = 'Global Active Power', xlab = 'Global Active Power (kilowatts)')
dev.off()
