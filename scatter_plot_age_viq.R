#Making a scatter plot of the age and viq.
> age.scatters<-function(scattersage){
  + agescatters<-ggplot(IQ, aes(age, viq)) + geom_point() + scale_x_continuous("age", breaks = seq(0,80,by = 5))+ scale_y_continuous("piq", breaks = seq(0,150,by = 10))+ theme_bw()
  + return(agescatters)}
> age.scatter()
