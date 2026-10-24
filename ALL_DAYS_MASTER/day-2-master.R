#1.Covariance and correlation
#Children of three ages are asked to indicate their preference for three
#photographs of adults. Do the data suggest that there is a significant
#relationship between age and photograph preference? What is wrong
#with this study?
#Photograph:
#Age of child A B C
#5-6 years: 18 22 20
#7-8 years: 2 28 40
#9-10 years: 20 10 40
#1. Use cov() to calculate the sample covariance between B and C.
#2. Use another call to cov() to calculate the sample covariance matrix for
#the preferences.
#3. Use cor() to calculate the sample correlation between B and C.
#4. Use another call to cor() to calculate the sample correlation matrix for
#the preferences.


photo_data <- data.frame(
  A = c(18, 2, 20),
  B = c(22, 28, 10),
  C = c(20, 40, 40)
)
cov_bc <- cov(photo_data$B, photo_data$C)
cat("Covariance between B and C:\n")
print(cov_bc)
cov_matrix <- cov(photo_data)
cat("\n Covariance Matrix:\n")
print(cov_matrix)
cor_bc <- cor(photo_data$B, photo_data$C)
cat("\n Correlation between B and C:\n")n
print(cor_bc)
cor_matrix <- cor(photo_data)
cat("\n Correlation Matrix:\n")
print(cor_matrix)

#2.Imagine that you have selected data from the All Electronics data warehouse for analysis.
#The data set will be huge! The following data are a list of All Electronics prices for
#commonly sold items (rounded to the nearest dollar). The numbers have been sorted: 1, 1, 5,5,5,5,5,8,8,10, 10, 10, 10, 12, 14, 14, 14, 15, 15, 15, 15, 15, 15, 18, 18, 18, 18, 18,
#Partition the dataset using an equal-frequency partitioning method with bin equal to 3 (ii) apply datasmoothing using bin means and bin boundary.(iii) Plot Histogram for the above frequency division


prices <- c(1, 1, 5, 5, 5, 5, 5, 8, 8, 10, 10, 10, 10, 12, 14, 14, 14,15, 15, 15, 15, 15, 15, 18, 18, 18, 18, 18)
sorted_prices <- sort(prices)
bin1 <- sorted_prices[1:9]
bin2 <- sorted_prices[10:18]
bin3 <- sorted_prices[19:28]
mean1 <- mean(bin1)
mean2 <- mean(bin2)
mean3 <- mean(bin3)
smoothed_mean1 <- rep(mean1, length(bin1))
smoothed_mean2 <- rep(mean2, length(bin2))
smoothed_mean3 <- rep(mean3, length(bin3))
bin1
bin2
bin3
mean1
mean2
mean3
smoothed_mean1
smoothed_mean2
smoothed_mean3

smooth_boundaries <- function(b) {
  min_val <- min(b)
  max_val <- max(b)
  sapply(b, function(x) {
    if (abs(x - min_val) <= abs(x - max_val)) min_val else max_val
  })
}
smooth_bound1 <- smooth_boundaries(bin1)
smooth_bound2 <- smooth_boundaries(bin2)
smooth_bound3 <- smooth_boundaries(bin3)
smooth_bound1
smooth_bound2
smooth_bound3
bin_counts <- c(length(bin1), length(bin2), length(bin3))
bin_labels <- c(
  paste0("Bin 1\n[", min(bin1), " - ", max(bin1), "]"),
  paste0("Bin 2\n[", min(bin2), " - ", max(bin2), "]"),
  paste0("Bin 3\n[", min(bin3), " - ", max(bin3), "]")
)
barplot(bin_counts, 
        names.arg = bin_labels, 
        col = "steelblue", 
        border = "white",
        main = "Equal-Frequency Partitioning Histogram (3 Bins)", 
        ylab = "Frequency (Count)", 
        xlab = "Partitioned Bins",
        ylim = c(0, 12))
box()

#3.Two Maths teachers are comparing how their Year 9 classes performed in the end of year exams. Their results are as follows: Class A: 76, 35, 47, 64, 95, 66, 89, 36, 8476,35,47,64,95,66,89,36,84Class B: 51, 56, 84, 60, 59, 70, 63, 66, 5051,56,84,60,59,70,63,66,50
#(i) Find which class had scored higher mean, median and range.
#(ii) Plot above in boxplot and give the inferences

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

#4.Let us consider one example to make the calculation method clear. Assume that the
#minimum and maximum values for the feature F are $50,000 and $100,000 correspondingly.
#It needs to range F from 0 to 1. In accordance with min-max normalization, v = $80,
#b) Use the two methods below to normalize the following group of data: 200, 300, 400, 600,
#1000
#(a) min-max normalization by setting min = 0 and max = 1
#(b) z-score normalization

data <- c(200, 300, 400, 600, 1000)
print(data)
min_val <- min(data)
max_val <- max(data)
min_max_normalized <- (data - min_val) / (max_val - min_val)
print(min_max_normalized)
z_score_base <- scale(data)
print(as.vector(z_score_base))
mean_val <- mean(data)
pop_sd <- sqrt(sum((data - mean_val)^2) / length(data))
z_score_pop <- (data - mean_val) / pop_sd
print(z_score_pop)


#5.Make a histogram for the “AirPassengers “dataset, start at 100 on the x-axis, and from
#values 200 to 700, make the bins 150 wide


data("AirPassengers")
custom_breaks <- seq(100, 700, by = 150)

hist(AirPassengers, 
     breaks = custom_breaks, 
     main = "AirPassengers Histogram (Start: 100, Width: 150)", 
     xlab = "Number of Passengers", 
     ylab = "Frequency", 
     col = "steelblue", 
     border = "white",
     right = FALSE)


#6.Obtain Multiple Lines in Line Chart using a single Plot Function in R.Use
#attributes“mpg”and“qsec”of the dataset “mtcars”


data("mtcars")
mtcars_sorted <- mtcars[order(mtcars$mpg), ]
y_min <- min(c(mtcars_sorted$mpg, mtcars_sorted$qsec))
y_max <- max(c(mtcars_sorted$mpg, mtcars_sorted$qsec))
plot(mtcars_sorted$mpg, 
     type = "l", 
     col = "blue", 
     lwd = 2, 
     ylim = c(y_min, y_max),
     main = "Multiple Lines Chart: MPG vs QSEC", 
     xlab = "Car Index (Sorted by MPG)", 
     ylab = "Scale Value")
lines(mtcars_sorted$qsec, 
      col = "red", 
      lwd = 2, 
      lty = 2)
legend("topleft", 
       legend = c("MPG (Miles Per Gallon)", "QSEC (1/4 Mile Time)"), 
       col = c("blue", "red"), 
       lwd = 2, 
       lty = c(1, 2))

#7.Download the Dataset &quot;water&quot; From R dataset Link.Find out whether there is a linear
#relation between attributes&quot;mortality&quot; and&quot;hardness&quot; by plot function.Fit the Data into the
#Linear Regression model.Predict the mortality for the hardness=88.
library(HSAUR)
data("water")
head(water)
plot(water$hardness, water$mortality,
     main = "Water Hardness vs. Mortality",
     xlab = "Water Hardness (Calcium concentration, ppm)",
     ylab = "Mortality (Deaths per 100,000)",
     pch = 19, 
     col = "steelblue")
abline(lm(mortality ~ hardness, data = water), col = "red", lwd = 2)
model <- lm(mortality ~ hardness, data = water)
summary(model)
new_data <- data.frame(hardness = 88)
predicted_mortality <- predict(model, newdata = new_data)
cat("Predicted Mortality for Hardness = 88:", round(predicted_mortality, 2), "\n")

#8.Create a Boxplot graph for the relation between &quot;mpg&quot;(miles per galloon) and &quot;cyl&quot;(number
#of Cylinders) for the dataset &quot;mtcars&quot; available in R Environment.

data(mtcars)
mtcars$cyl_factor <- as.factor(mtcars$cyl)
boxplot(mpg ~ cyl_factor, data = mtcars,
        main = "Miles Per Gallon by Number of Cylinders",
        xlab = "Number of Cylinders (cyl)",
        ylab = "Miles Per Gallon (mpg)",
        col = c("lightblue", "lightgreen", "lightpink"),
        border = "darkblue")

#9. Assume the Tennis coach wants to determine if any of his team players are scoring
#outliers. To visualize the distribution of points scored by his players, then how can he
#decide to develop the box plot? Give suitable example using Boxplot visualization
#technique.
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

#10. Implement using R language in which age group of people are affected byblood pressure
#based on the diabetes dataset show it using scatterplot and bar chart (that is BloodPressure vs
#Age using dataset “diabetes.csv”)


install.packages("ggplot2")
install.packages("dplyr")

library(ggplot2)
library(dplyr)


diabetes_data <- read.csv("diabetes.csv")

head(diabetes_data)

ggplot(diabetes_data, aes(x = Age, y = BloodPressure)) +
  geom_point(color = "coral", alpha = 0.6, size = 2) +
  geom_smooth(method = "lm", color = "darkblue", se = FALSE) +
  labs(title = "Scatter Plot: Blood Pressure vs. Age",
       subtitle = "Examining individual data points and trend",
       x = "Age (Years)", 
       y = "Blood Pressure (mm Hg)") +
  theme_minimal()

diabetes_data$AgeGroup <- cut(diabetes_data$Age, 
                              breaks = c(20, 30, 40, 50, 60, 70, 80, 100),
                              labels = c("20-29", "30-39", "40-49", "50-59", "60-69", "70-79", "80+"),
                              right = FALSE)

avg_bp_data <- diabetes_data %>%
  group_by(AgeGroup) %>%
  summarise(MeanBloodPressure = mean(BloodPressure, na.rm = TRUE))

ggplot(avg_bp_data, aes(x = AgeGroup, y = MeanBloodPressure, fill = AgeGroup)) +
  geom_bar(stat = "identity", width = 0.7) +
  labs(title = "Bar Chart: Average Blood Pressure by Age Group",
       subtitle = "Derived from Diabetes Dataset",
       x = "Age Group", 
       y = "Average Blood Pressure (mm Hg)") +
  theme_minimal() +
  theme(legend.position = "none")
