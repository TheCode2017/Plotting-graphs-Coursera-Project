
a<-read.table("household_power_consumption.txt",header=TRUE,sep=";",dec=".",stringsAsFactors=FALSE)
a<-a[a$Date %in% c("1/2/2007","2/2/2007"),]
(a$Global_active_power)
Globalactivepower<-as.numeric(a$Global_active_power)
#plot3
png(file="plot3.png",width=480,height=480)
plot(DATETIME,a$Sub_metering_1,type="l",col="black")
lines(DATETIME,a$Sub_metering_2,type="l",col="red")
lines(DATETIME,a$Sub_metering_3,type="l",col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,lwd=2.5,col=c("black","red","blue"))
dev.off()