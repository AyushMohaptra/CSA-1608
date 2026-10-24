player_points <- c(45, 50, 52, 55, 58, 60, 62, 65, 70, 110)
boxplot(player_points, 
        main = "Tennis Players Points Distribution", 
        ylab = "Points Scored", 
        col = "orange", 
        border = "brown",
        outline = TRUE)
outlier_values <- boxplot.stats(player_points)$out

if(length(outlier_values) > 0) {
  cat("Outlier(s) detected:", outlier_values, "\n")
} else {
  cat("No outliers detected in the dataset.\n")
}