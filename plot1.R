generate_plot1 <- function(file){
  household <- read.table(file,sep=";",header=TRUE,as.is=TRUE)
  house_sub <- household[household$Date == '1/2/2007' | household$Date== '2/2/2007',]
  house_sub$Global_active_power <- as.numeric(house_sub$Global_active_power)
  #default dimensions are 480 * 480 pixels
  png(file='plot1.png')
  #png(file='plot1.png',height=480,width=480)
  hist(house_sub$Global_active_power,col='red',xlab='Global Active Power (kilowatts)',main='Global Active Power')
  dev.off()
}
