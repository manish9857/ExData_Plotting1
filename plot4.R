#reading the file 
data<-read.table("household_power_consumption.txt",sep=";",na.strings="?",skip=66637,nrows=2880)
#determing the class of variables used in this problems
V3<-as.numeric(V3)
V4<-as.numeric(V4)
V5<-as.numeric(V5)
V7<-as.numeric(V7)
V8<-as.numeric(V8)
V9<-as.numeric(V9)
#creating a new variable for date and time
DateTime<-strptime(paste(V1,V2),"%d/%m/%Y %H:%M:%S")
#creating forth plot
png(filename="plot4.png",width=480,height=480)
#creating plot
par(mfrow=c(2,2))
plot(DateTime,V3,type="l",xlab="",ylab="Global Active Power (kilowatts)")
plot(DateTime,V5,type="l",xlab="datetime",ylab="Voltage")
plot(DateTime,V7,type="n",ylab="Energy sub metering",xlab="")
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_Metering_1","Sub_Metering_2","Sub_Metering_3"))
points(DateTime,V7,type="l",col="black")
points(DateTime,V8,type="l",col="red")
points(DateTime,V9,type="l",col="blue")
plot(DateTime,V4,type="l",ylab="Global_reactive_power",xlab="datetime")
dev.off()