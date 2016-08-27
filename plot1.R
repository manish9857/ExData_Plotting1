#reading the file 
data<-read.table("household_power_consumption.txt",sep=";",skip=66637,nrows=2880)
#attaching the data for easy access
attach(data)
#creating the png file
png(filename="plot1.png",width=480,height=480)
#plotting the first graph
hist(V3,col='red',main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency")
dev.off()
