box <- c(10,12,33,1,3,22,10,21,12)

mode_box<- names(table(box))[table(box)==max(table(box))]
mean_box <- mean(box)
sd_box <- sd(box)
median_box<- median(box)

cat("MEAN IS ",mean_box,"MODE IS ",mode_box,"Standard deviation is ",sd_box,"MEDIAN IS ",median_box)

boxplot(box,
         names = c("SCORES"),
         main = "Boxplot of SCORES BY PER TENNIS PLAYER to find outliers",
         ylab = "Scores",
         col = c("blue"))
