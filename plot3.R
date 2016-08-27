#reading the file 
data<-read.table("household_power_consumption.txt",sep=";",na.strings="?",skip=66637,nrows=2880)
#determing the class of three variables used in this problems
V7<-as.numeric(V7)
V8<-as.numeric(V8)
V9<-as.numeric(V9)
#creating a new variable for date and time
DateTime<-strptime(paste(V1,V2),"%d/%m/%Y %H:%M:%S")
#creating third plot
png(filename="plot3.png",width=480,height=480)
#creating the structure of the graph
plot(DateTime,V7,type="n",ylab="Energy sub metering",xlab="")
#adding legends
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_Metering_1","Sub_Metering_2","Sub_Metering_3"))
#adding points for three variables
points(DateTime,V7,type="l",col="black")
points(DateTime,V8,type="l",col="red")
points(DateTime,V9,type="l",col="blue")
dev.off()