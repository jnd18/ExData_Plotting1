# load and process the data
source("load_data.R")

# Create the plot
png("plot3.png")
plot(data$datetime, data$Sub_metering_1, type = "l", 
     ylab = "Energy sub metering", xlab = "")
points(data$datetime, data$Sub_metering_2, type = "l", col = "red")
points(data$datetime, data$Sub_metering_3, type = "l", col = "blue")
legend("topright",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lty = 1)
dev.off()