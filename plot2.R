generate_plot2 <- function(file){
  household <- read.table(file,sep=";",header=TRUE,as.is=TRUE)
  house_sub <- household[household$Date == '1/2/2007' | household$Date== '2/2/2007',]
  house_sub$Global_active_power <- as.numeric(house_sub$Global_active_power)
  house_sub$DateTime <- strptime(paste(house_sub$Date,house_sub$Time),'%d/%m/%Y %H:%M:%S')
  #default dimensions are 480 * 480 pixels
  png(file='plot2.png')
  #png(file='plot2.png',height=480,width=480)
  plot(house_sub$DateTime,house_sub$Global_active_power,type='l',ylab='Global Active Power (kilowatts)',xlab='')
  dev.off()
}
