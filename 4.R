data<-(11,13,15,15,16,19,20,20,20,21,21,22,23,24,30,40,45,45,71,72,73,75)
bins<-5
bins_indices<- cute(data,bins)
mean_s<-tapply(data,bin_indices,mean)
median_s<-tapply(data,bin_indices,median)
min_max_s<-tapply(data,bin_indices,function(x)((min(x))max(x)))