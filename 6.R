
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
grid(nx = NA, ny = NULL, col = "lightgray", lty = "dotted")
box()