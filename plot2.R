# load and process the data
source("load_data.R")

# Create the plot
png("plot2.png")
plot(data$datetime, data$Global_active_power, type = "l", 
     ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()