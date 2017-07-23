a<-read.table("household_power_consumption.txt",header=TRUE,sep=";",dec=".",stringsAsFactors=FALSE)
a<-a[a$Date %in% c("1/2/2007","2/2/2007"),]
(a$Global_active_power)
Globalactivepower<-as.numeric(a$Global_active_power)

#Plot1
png(file="plot1.png",width=480,height=480)
hist(Globalactivepower,main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.off()