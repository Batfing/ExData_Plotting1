# Retrieving the data
source("chilectra.R")

# Opening the PNG file
png( filename = "plot2.png", width = 480, height = 480 )

# Generating the diagramm
plot(chilectra$Global_active_power, type="o", pch="", xlab = "", ylab = "Global Active Power (kilowatts)", xaxt='n' )
axis( 1, labels = c("Thu","Fri","Sat"), at = seq( 1, length(chilectra$Time), length.out = 3 ) )

# Closing the Device
dev.off()

