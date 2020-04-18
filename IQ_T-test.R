#Running a T-test on piq and viq. This compares the IQ before being in a coma to the IQ after being in a coma.

IQ.ttest<-function(IQttest){
  + IQT<-t.test(IQP, IQV, paired=FALSE)
  + return(IQT)}
> IQ.ttest()
