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
      lty = 2) # lty = 2 makes it a dashed line for easy distinction

legend("topleft", 
       legend = c("MPG (Miles Per Gallon)", "QSEC (1/4 Mile Time)"), 
       col = c("blue", "red"), 
       lwd = 2, 
       lty = c(1, 2))