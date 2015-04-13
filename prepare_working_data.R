url = 'https://d396qusza40orc.cloudfront.net/exdata/data/household_power_consumption.zip'
zip.file.name = 'power_consumption.zip'
original.data.file.name = 'household_power_consumption.txt' 
working.data.file.name = 'working_data.txt'

# Prepares working data. Downloads and unzips original data if required and then
# subsets required data (2007-02-01 and 2007-02-02) from the original data set 
# and saves it in the appropriate file.   

prepare_working_data <- function() {
    if (!file.exists(zip.file.name)) download.file(url, destfile = zip.file.name , method = 'curl');
    if (!file.exists(original.data.file.name)) unzip(zip.file.name);
    if (!file.exists(working.data.file.name)) {
	data = read.csv(original.data.file.name, sep = ';')
	data$Date = as.Date(data$Date, '%d/%m/%Y')
	p = data$Date >= as.Date('2007-02-01') & data$Date <= as.Date('2007-02-02')
	write.table(data[p,], working.data.file.name)
    }
}
