data <-c(5,10,11,13,15,35,50,55,72,92,20,4,21,5)
bins<- 5
bin_indices<- cut(data,bins)
cat("equal width are ")
bin_indices

data <-c(5,10,11,13,15,35,50,55,72,92,20,4,21,5)
bins<- 5
bin_ceiling<-ceiling(data)
bin_indices<-split(data,bin_ceiling)
bin_indices


age<- c(23,23,27,27,34,41,47,49,50,52,54,54,56,57,58,58,60,61)
fat<- c(9.5,26.5,7.8,17.8,31.4,25.9,27.4,27.2,31.2,34.6,42.5,28.8,33.4,30.2,34.1,41.2,32.9,35.2)
min_max_a <- c(min = min(age), max = max(age))
min_max_f <- c(min = min(fat), max = max(fat))
min_max_a
min_max_f
norm_a <- (age - min(age)) / (max(age) - min(age))
norm_f <- (fat - min(fat)) / (max(fat) - min(fat))
norm_f
norm_a

sd<- 12.94
var1 <- 35
z <- (var1 - mean(fat)) / sd
z


A<-c(76,35,47,64,95,66,89,36,84,76,47,64,95.66,89,36,84)
B<-c(51,56,84,60,59,70,63,66,50,51,56,84,60,59,70,63,66,50)
comparison <- data.frame(
  Variable = c("Age", "Fat"),
  Mean = c(mean(age), mean(fat)),
  Median = c(median(age), median(fat)),
  Minimum = c(min(age), min(fat)),
  Maximum = c(max(age), max(fat)),
  Range = c(diff(range(age)), diff(range(fat)))
)

print(comparison)
boxplot(A, B,
        names = c("CLASS A", "CLASS B"),
        main = "BOX PLOT OF CLASSES ",
        ylab = "Values",
        col = c("blue", "lightblue")
)