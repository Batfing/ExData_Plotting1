# Retrieving the data
#source("chilectra.R")

# Opening the PNG file
png( filename = "plot3.png", width = 480, height = 480 )

# Generating the diagramm
plot(chilectra$Sub_metering_1, type="o", pch="", col = "black", xlab = "", ylab = "Energy sub metering", xaxt='n' )
axis( 1, labels = c("Thu","Fri","Sat"), at = seq( 1, length(chilectra$Time), length.out = 3 ) )
lines(chilectra$Sub_metering_2, type="o", pch="", col = "red",    )
lines(chilectra$Sub_metering_3, type="o", pch="", col = "blue",   )
legend('topright', legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3" ), 
                   col    = c("black",          "red",            "blue"           ), lwd = 5 )

# Closing the Device
dev.off()


