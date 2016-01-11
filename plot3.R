

# Set up png file to avoid printing problems later

png(filename="plot3.png",width=480,height=480,units="px")

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

legend("topright", c("Sub_metering_1","Sub_Metering_2","Sub_Metering_3"), col=c("black","red","blue"),lty=c(1,1,1),lwd=c(0.25,0.25))

# Saving png file

dev.off()