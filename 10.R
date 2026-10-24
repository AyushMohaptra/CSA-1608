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

cat("\n=== Prediction Result ===\n")
cat("Predicted Mortality for Hardness = 88:", round(predicted_mortality, 2), "\n")