# load and process the data
source("load_data.R")

# Create the plot
png("plot1.png")
hist(data$Global_active_power,
     main = "Global Active Power",
     col = "red",
     xlab = "Global Active Power (kilowatts)")
dev.off()