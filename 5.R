
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
cat("\n Correlation between B and C:\n")
print(cor_bc)

cor_matrix <- cor(photo_data)
cat("\n Correlation Matrix:\n")
print(cor_matrix)