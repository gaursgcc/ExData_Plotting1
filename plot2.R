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

# Copying to png file

dev.copy(png,"plot2.png")

dev.off()