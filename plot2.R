#reading the file 
data<-read.table("household_power_consumption.txt",sep=";",na.strings="?",skip=66637,nrows=2880)
#creating new variable for Global Active Power
glblactvpwr<-as.numeric(V3)
#creating a new variable for date and time
DateTime<-strptime(paste(V1,V2),"%d/%m/%Y %H:%M:%S")
#creating second plot
png(filename="plot2.png",width=480,height=480)
plot(DateTime,glblactvpwr,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()
