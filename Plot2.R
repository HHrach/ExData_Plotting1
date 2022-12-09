#import full dataset
full_data <- read.csv("household_power_consumption.txt", sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')

#subset data only for dates of interest and store in a new variable
data_sub <- full_data[full_data$Date %in% c("1/2/2007","2/2/2007"), ]

#reformat the Date and Time variables to Date/Time classes
new_date <- as.Date(data_sub[, 1], format = "%d/%m/%Y")
new_time <- strptime(data_sub[, 2], format = "%H:%M:%S")
time_label <- as.POSIXct(paste(new_date, data_sub[, 2]))

#plot 2 (global active power against time for the time frame of interest)

plot(time_label, data_sub[, 3], xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")

