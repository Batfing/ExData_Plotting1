# Retrieving the data
source("chilectra.R")

# Opening the PNG file
png( filename = "plot4.png", width = 480, height = 480 )


par( mfrow = c(2, 2) ) #, mar = c(5, 4, 2, 1))

# Generating the diagramms
# Upper left
plot(chilectra$Global_active_power, type="o", pch="", xlab = "", ylab = "Global Active Power", xaxt='n' )
axis( 1, labels = c("Thu","Fri","Sat"), at = seq( 1, length(chilectra$Time), length.out = 3 ) )
# upper right
plot(chilectra$Voltage, type="o", pch="", xlab = "datetime", ylab = "Global Active Power", xaxt='n' )
axis( 1, labels = c("Thu","Fri","Sat"), at = seq( 1, length(chilectra$Time), length.out = 3 ) )
# below left
plot(chilectra$Sub_metering_1, type="o", pch="", col = "black", xlab = "", ylab = "Energy sub metering", xaxt='n' )
axis( 1, labels = c("Thu","Fri","Sat"), at = seq( 1, length(chilectra$Time), length.out = 3 ) )
lines(chilectra$Sub_metering_2, type="o", pch="", col = "red",    )
lines(chilectra$Sub_metering_3, type="o", pch="", col = "blue",   )
legend('topright', legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3" ), 
                   col    = c("black",          "red",            "blue"           ), lwd = 5 )
# below right
plot(chilectra$Global_reactive_power, type="o", pch="", xlab = "datetime", ylab = "Global_reactive_power", xaxt='n' )
axis( 1, labels = c("Thu","Fri","Sat"), at = seq( 1, length(chilectra$Time), length.out = 3 ) )

# Closing the Device
dev.off()
