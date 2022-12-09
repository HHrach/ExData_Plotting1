#import full data
full_data <- read.csv("household_power_consumption.txt", sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')

#subset data only for dates of interest and store in a new variable data_sub
data_sub <- full_data[full_data$Date %in% c("1/2/2007","2/2/2007"), ]

#Plot 3 energy sub metering against time, legend size?

plot(time_label, data_sub[, 7], xlab = "", ylab = "Energy sub metering", type = "l")
lines(time_label, data_sub[, 8], col = "red")
lines(time_label, data_sub[, 9], col = "blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black","red","blue"), lty = 1)

