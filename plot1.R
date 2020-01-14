# Retrieving the data
source("chilectra.R")

# Opening the PNG file
png( filename = "plot1.png", width = 480, height = 480 )

# Generating the histogram
hist(chilectra$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)" )

# Closing the Device
dev.off()
