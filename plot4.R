a<-read.table("household_power_consumption.txt",header=TRUE,sep=";",dec=".",stringsAsFactors=FALSE)


a<-a[a$Date %in% c("1/2/2007","2/2/2007"),]
(a$Global_active_power)
Globalactivepower<-as.numeric(a$Global_active_power)
#plot4
png(file="plot4.png",width=480,height=480)
par(mfrow=c(2,2))
plot(DATETIME,Globalactivepower,ylab="Global Active Power(kilowatts)",type="l")
plot(DATETIME,a$Voltage,ylab="Voltage",type="l")
plot(DATETIME,a$Sub_metering_1,type="l",col="black")
lines(DATETIME,a$Sub_metering_2,type="l",col="red")
lines(DATETIME,a$Sub_metering_3,type="l",col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,lwd=2.5,col=c("black","red","blue"))
plot(DATETIME,a$Global_reactive_power,ylab="Voltage",type="l")
dev.off()