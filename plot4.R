# Set up png file to avoid printing problems later

png(filename="plot4.png",width=480,height=480,units="px")

plot.new()

par(mfrow=c(2,2))

# Plot Global_active_power against Weekdays only with label and without x-axes in no pasting mode

plot(eda_hw_1$Global_active_power,eda_hw_1$weekdays,type="n",ylab= "Global Active Power(kilowatts)",xlab="",xaxt="n")

# Add the line graph of Global Active Power

lines(eda_hw_1$Global_active_power)

# Variables to be used for X-axes ticks

a <- length(eda_hw_1$weekday)
b <- length(eda_hw_1$weekday)/2

# Putting X-axes ticks at Start, mid and End

axis(1,at=1:1,labels=c("Thu"))
axis(1,at=b:b,labels=c("Fri"))
axis(1,at=a:a,labels=c("Sat"))




# Plot Voltage against Weekdays only with label and without x-axes in no pasting mode

plot(eda_hw_1$Voltage,eda_hw_1$weekdays,type="n",ylab= "Voltage",xlab="datetime",xaxt="n")

# Add the line graph of Voltage

lines(eda_hw_1$Voltage)

# Variables to be used for X-axes ticks

a <- length(eda_hw_1$weekday)
b <- length(eda_hw_1$weekday)/2

# Putting X-axes ticks at Start, mid and End

axis(1,at=1:1,labels=c("Thu"))
axis(1,at=b:b,labels=c("Fri"))
axis(1,at=a:a,labels=c("Sat"))



# Plot Sub_Metering_1 against Weekdays only with label and without x-axes in no pasting mode

plot(eda_hw_1$Sub_metering_1,eda_hw_1$weekdays,type="n",ylab= "Energy sub metering",xlab="",xaxt="n")

# Add line graphs for Sub_Metering_[1-3]

lines(eda_hw_1$Sub_metering_1,col="black")
lines(eda_hw_1$Sub_metering_2,col="red")
lines(eda_hw_1$Sub_metering_3,col="blue")

# Putting X-axes ticks at Start, mid and End

axis(1,at=1:1,labels=c("Thu"))
axis(1,at=b:b,labels=c("Fri"))
axis(1,at=a:a,labels=c("Sat"))

# Adding the required legend

legend("topright", c("Sub_metering_1","Sub_Metering_2","Sub_Metering_3"), col=c("black","red","blue"),lty=c(1,1,1),cex=0.75,bty="n")



# Plot Global_reactive_power against Weekdays only with label and without x-axes in no pasting mode

plot(eda_hw_1$Global_reactive_power,eda_hw_1$weekdays,type="n",ylab= "Global_reactive_power",xlab="datetime",xaxt="n")

# Add the line graph of Global Reactive Power

lines(eda_hw_1$Global_reactive_power)

# Variables to be used for X-axes ticks

a <- length(eda_hw_1$weekday)
b <- length(eda_hw_1$weekday)/2

# Putting X-axes ticks at Start, mid and End

axis(1,at=1:1,labels=c("Thu"))
axis(1,at=b:b,labels=c("Fri"))
axis(1,at=a:a,labels=c("Sat"))

dev.off()