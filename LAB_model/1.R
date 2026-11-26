
x <- c(2,3,3,4,4,4,6,6,6,6,7,7,8,9,9,10,10,10,11,11,12,12,12,12,13,14,14,15,15,15,16,16,17,18,18,18,18,19,20,20,20,21,22,22,23,24,25,25)

b <- split(x, rep(1:4, each=12))

print(b)

cat("Bin Means:\n")
print(lapply(b, function(v) rep(round(mean(v),2),12)))

cat("Bin Boundary Smoothing:\n")
print(lapply(b, function(v)
  ifelse(abs(v-min(v)) <= abs(v-max(v)), min(v), max(v))
))

hist(x, main="Grocery Prices", xlab="Price", col="skyblue")
