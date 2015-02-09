# Subsets required data (2007-02-01 and 2007-02-02) from the original data set 
# and saves it in the appropriate file.   

data = read.csv('household_power_consumption.txt', sep = ';')
data$Date = as.Date(data$Date, '%d/%m/%Y')
p = data$Date >= as.Date('2007-02-01') & data$Date <= as.Date('2007-02-02')
write.table(data[p,], 'working-data.txt')
