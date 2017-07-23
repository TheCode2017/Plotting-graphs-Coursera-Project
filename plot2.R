
a<-read.table("household_power_consumption.txt",header=TRUE,sep=";",dec=".",stringsAsFactors=FALSE)


a<-a[a$Date %in% c("1/2/2007","2/2/2007"),]
(a$Global_active_power)
Globalactivepower<-as.numeric(a$Global_active_power)
#plot2
DATETIME<-strptime(paste(a$Date,a$Time),"%d/%m/%Y %H:%M:%S") 
png(file="plot2.png",width=480,height=480)
plot(DATETIME,Globalactivepower,ylab="Global Active Power(kilowatts)",type="l")
dev.off()
?plot
names(a)