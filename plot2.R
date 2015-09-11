all_data <- read.table('household_power_consumption.txt', sep=";", na.strings="?", header=TRUE)
needed_dates <- c('1/2/2007', '2/2/2007')
useful_data <- subset(all_data,all_data$Date==needed_dates[1]|all_data$Date==needed_dates[2])
dates_data<-strptime(paste(useful_data$Date, useful_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png(file="plot2.png", width = 480, height = 480)
plot(dates_data,useful_data$Global_active_power, type = "l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()

