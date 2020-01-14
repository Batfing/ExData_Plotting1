library(lubridate)

# parsing the data
data_set  <- 'household_power_consumption.txt'
chilectra <- read.table( file = data_set, sep=";", header = T, na.strings = "?" )

# converting date and time columns
chilectra[,1] <- dmy( as.character( chilectra[,1]) )
chilectra[,2] <- hms( as.character( chilectra[,2]) )

# filtrering only mesurements of selected days
chilectra <- subset( chilectra, Date <= "2007-02-02" & Date >= "2007-02-01" )
