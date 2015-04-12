elec <- read.table("household_power_consumption.txt",sep = ';',header=TRUE)
elec <- elec[elec$Date %in% c("1/2/2007","2/2/2007"),]
elec$Date <- as.Date(elec$Date,"%d/%m/%Y")
png("plo1.png",width=480,height=480)
hist(as.numeric(as.character(elec$Global_active_power)),col="red",xlab="Global Active Power(kilowatts)",ylab="Frequency",main="Global Active Power")
dev.off()