download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile="household_power_consumption.zip")
unzip("household_power_consumption.zip")
tab.txt<-("household_power_consumption.txt")
tabl <- read.table(tab.txt, header=T, sep=';', na.strings="?", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
table <- tabl[(tabl$Date == "1/2/2007") | (tabl$Date == "2/2/2007"),]
tableDT <- strptime(paste(table$Date, table$Time), "%d/%m/%Y %H:%M:%S")
