library(HSAUR)
data("water")
head(water)
#Q1
plot(water$hardness, water$mortality,
     main = "Water Hardness vs. Mortality",
     xlab = "Water Hardness (Calcium concentration, ppm)",
     ylab = "Mortality (Deaths per 100,000)",
     pch = 19, 
     col = "steelblue")
abline(lm(mortality ~ hardness, data = water), col = "red", lwd = 2)

#Q2
cor_HM<-cor(water$mortality,water$hardness)
cor_HM

#Q3
model <- lm(mortality ~ hardness, data = water)

#Q4
summary(model)

#Q5
new_data <- data.frame(hardness = 100)
predicted_mortality <- predict(model, newdata = new_data)
cat("Predicted Mortality for Hardness = 100:", round(predicted_mortality, 2), "\n")

