age <- c(23, 23, 27, 27, 39, 41, 47, 49, 50, 52, 54, 54, 56, 57, 58, 58, 60, 61)
fat <- c(9.5, 26.5, 7.8, 17.8, 31.4, 25.9, 27.4, 27.2, 31.2, 34.6, 42.5, 28.8, 33.4, 30.2, 34.1, 32.9, 41.2, 35.7)

mode_age<- names(table(age))[table(age)==max(table(age))]
mean_age <- mean(age)
mean_fat <- mean(fat)
sd_fat <- sd(fat)
sd_age <- sd(age)

cat("Mean fat is:", mean_fat,"Mean age is : ",mean_age,"Mode age is : ",mode_age,"SD of age is : ",sd_age,"SD of fat is : ",sd_fat)

boxplot(age, fat,
        names = c("AGE", "Body MASS"),
        main = "Boxplot of Age and Body Fat",
        ylab = "Values",
        col = c("blue", "lightblue")
)

