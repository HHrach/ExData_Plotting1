#import full dataset
full_data <- read.csv("household_power_consumption.txt", sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')


#subset data only for dates of interest and store in a new variable
data_sub <- full_data[full_data$Date %in% c("1/2/2007","2/2/2007"), ]

#plot 1 histogram using new subset of data, plot global active power by frquency

hist(data_sub$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

