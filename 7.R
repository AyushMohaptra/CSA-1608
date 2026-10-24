class_a <- c(76, 35, 47, 64, 95, 66, 89, 36, 84)
class_b <- c(51, 56, 84, 60, 59, 70, 63, 66, 50)
calc_stats <- function(scores, class_name) {
  mean_val <- mean(scores)
  median_val <- median(scores)
  range_val <- max(scores) - min(scores)}
calc_stats(class_a, "Class A")
calc_stats(class_b, "Class B")

exam_data <- list("Class A" = class_a, "Class B" = class_b)

boxplot(exam_data, 
        main = "Year 9 Math Exam Performance Comparison", 
        ylab = "Exam Scores", 
        xlab = "Classes",
        col = c("lightblue", "lightgreen"),
        border = "darkblue",
        notch = FALSE)
grid(nx = NA, ny = NULL, col = "gray", lty = "dotted")