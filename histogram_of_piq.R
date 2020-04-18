#Generating a histogram of piq
piq.histogram<-function(histogrampiq){
  + histogram.piq<-ggplot(IQ, aes(age)) + geom_histogram(binwidth = 2)+scale_x_continuous("age", breaks = seq(0,100,by = 5))+scale_y_continuous("piq", breaks = seq(0,150,by = 10))+labs(title = "Histogram")
  + return(histogram.piq)}
> piq.histogram()
