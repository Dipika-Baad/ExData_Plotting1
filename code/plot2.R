elec <- read.table("household_power_consumption.txt",sep = ';',header=TRUE)
elec <- elec[elec$Date %in% c("1/2/2007","2/2/2007"),]
elec$Time1 <- as.character(elec$Time)
elec$DateTime <- as.POSIXct(paste(elec$Date, elec$Time1), format="%d/%m/%Y %H:%M:%S")
png("plot2.png",width=480,height=480)
plot(elec$DateTime, as.numeric(as.character(elec$Global_active_power)),type="n",ylab="Global Active Power(kilowatts)",xlab="",main="")
lines(elec$DateTime, as.numeric(as.character(elec$Global_active_power)),type="l")
dev.off()
