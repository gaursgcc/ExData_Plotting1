# Extracting and storing required data in a data frame eda_hw_1

# Extracting column names
columnnames <-names(read.table(file="C:\\Gaurav\\Dropbox\\household_power_consumption.txt", header=TRUE, sep=";",nrow=1))

# Extracting dataset without column
eda_hw_1 <- read.table(file="C:\\Gaurav\\Dropbox\\household_power_consumption.txt", header=FALSE, sep=";", na.strings="?", skip=grep("[1^2]/2/2007", readLines("C:\\Gaurav\\Dropbox\\household_power_consumption.txt"))-1, nrow=2880)

# Applying Column Names to data frame

names(eda_hw_1)<- columnnames

# Validating quality
head(eda_hw_1)
tail(eda_hw_1)

# Changing to Date Format

eda_hw_1$Date <- as.Date(eda_hw_1$Date, "%d/%m/%Y")

# Adding Weekday field to the data

eda_hw_1$weekday <- weekdays(as.Date(eda_hw_1$Date))

# Plotting Histogram

plot.new()

hist(eda_hw_1$Global_active_power,col="red",xlab="Global Active Power(kilowatts)",ylim=c(0,1200),main="Global Active Power")

# Copying to png file

dev.copy(png,"plot1.png")

dev.off()