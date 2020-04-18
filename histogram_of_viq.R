#Generating a histogram of viq
viq.histogram<-function(histogramviq){
  + histogram.viq<-ggplot(IQ, aes(age)) + geom_histogram(binwidth = 2)+scale_x_continuous("age", breaks = seq(0,100,by = 5))+scale_y_continuous("viq", breaks = seq(0,150,by = 10))+labs(title = "Histogram")
  + return(histogram.viq)}
> viq.histogram()
