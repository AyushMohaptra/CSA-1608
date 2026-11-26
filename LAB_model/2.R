
A <- c(72,68,81,55,90,74,88,60,77,85)
B <- c(65,70,78,62,69,80,75,73,71,68)

for(x in list(A,B)) {
  cat("Mean:",mean(x),
      "Median:",median(x),
      "Range:",diff(range(x)),"\n")
}

boxplot(A,B,names=c("Section A","Section B"),
        main="Section Comparison",ylab="Marks",
        col=c("skyblue","lightgreen"))
