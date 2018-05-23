# load and process the data
source("load_data.R")

# Create the four plots
png("plot4.png")
par(mfrow = c(2, 2))

plot(data$datetime, data$Global_active_power, type = "l", 
    ylab = "Global Active Power", xlab = "")

plot(data$datetime, data$Voltage, type = "l", 
     ylab = "Voltage", xlab = "datetime")

plot(data$datetime, data$Sub_metering_1, type = "l", 
     ylab = "Energy sub metering", xlab = "")
points(data$datetime, data$Sub_metering_2, type = "l", col = "red")
points(data$datetime, data$Sub_metering_3, type = "l", col = "blue")
legend("topright", bty = "n", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lty = 1)

plot(data$datetime, data$Global_reactive_power, type = "l",
     ylab = "Global_reactive_power", xlab = "datetime")
dev.off()