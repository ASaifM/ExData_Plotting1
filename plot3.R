generate_plot3 <- function(file){
  household <- read.table(file,sep=";",header=TRUE,as.is=TRUE)
  house_sub <- household[household$Date == '1/2/2007' | household$Date== '2/2/2007',]
  house_sub$Global_active_power <- as.numeric(house_sub$Global_active_power)
  house_sub$DateTime <- strptime(paste(house_sub$Date,house_sub$Time),'%d/%m/%Y %H:%M:%S')
  #default dimensions are 480 * 480 pixels
  png(file='plot3.png')
  #png(file='plot3.png',height=480,width=480)
  plot(house_sub$DateTime,house_sub$Sub_metering_1,type='l',ylab='Energy Sub metering',xlab='')
  lines(house_sub$DateTime,house_sub$Sub_metering_2,type='l',col='red')
  lines(house_sub$DateTime,house_sub$Sub_metering_3,type='l',col='blue')
  legend('topright',lwd=1,col=c('black','red','blue'),legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))
  dev.off()
}
