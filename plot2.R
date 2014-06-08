source("prep.R")
png(filename = "plot2.png", width = 480, height = 480, units = "px")
plot(table$DateTime, table$Global_active_power, type="n", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
