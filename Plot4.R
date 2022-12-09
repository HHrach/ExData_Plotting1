#import full data
full_data <- read.csv("household_power_consumption.txt", sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')

#subset data only for dates of interest and store in a new variable data_sub
data_sub <- full_data[full_data$Date %in% c("1/2/2007","2/2/2007"), ]

#Plot four, add fourth graph and display plot1, plot2, plot3 and plot4 together 

par(mfrow = c(2,2))

plot(time_label, data_sub[, 3], xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")

plot(time_label, data_sub[, 5], xlab = "datetime", ylab = "Voltage", type = "l")

plot(time_label, data_sub[, 7], xlab = "", ylab = "Energy sub metering", type = "l")
lines(time_label, data_sub[, 8], col = "red")
lines(time_label, data_sub[, 9], col = "blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black","red","blue"), cex = 0.8, lty = 1 , bty = "n")

plot(time_label, data_sub[, 4], xlab = "datetime", ylab = "Global_reactive_power", type = "l")


