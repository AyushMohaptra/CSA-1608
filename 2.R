library(ggplot2)

# Create data frame
df <- data.frame(
  age = c(23,23,27,27,39,41,47,49,50,52,54,54,56,57,58,58,60,61),
  fat = c(9.5,26.5,7.8,17.8,31.4,25.9,27.4,27.2,31.2,34.6,42.5,28.8,33.4,30.2,34.1,32.9,41.2,35.7)
)

# 1. Scatter Plot with Regression Line
ggplot(df, aes(x = age, y = fat)) +
  geom_point(color = "steelblue", size = 3) +
  geom_smooth(method = "lm", color = "darkred", se = TRUE) +
  labs(title = "Relationship Between Age and Body Fat",
       x = "Age (Years)",
       y = "Body Fat (%)") +
  theme_minimal()