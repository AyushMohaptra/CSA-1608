
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