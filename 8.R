
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