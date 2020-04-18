#Making a scatter plot of the age and piq.
> age.scatter<-function(scatterage){
  + agescatter<-ggplot(IQ, aes(age, piq)) + geom_point() + scale_x_continuous("age", breaks = seq(0,80,by = 5))+ scale_y_continuous("piq", breaks = seq(0,150,by = 10))+ theme_bw()
  + return(agescatter)}
> age.scatter()
