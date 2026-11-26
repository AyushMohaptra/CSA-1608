
t <- list(
  c("Milk","Beer","Diapers"),
  c("Bread","Butter","Milk"),
  c("Milk","Diapers","Cookies"),
  c("Bread","Butter","Cookies"),
  c("Beer","Cookies","Diapers"),
  c("Milk","Diapers","Bread","Butter"),
  c("Bread","Butter","Diapers"),
  c("Beer","Diapers"),
  c("Milk","Diapers","Bread","Butter"),
  c("Beer","Cookies")
)

n <- length(unique(unlist(t)))

cat("Unique Items:",n)
cat("\nMaximum Association Rules:",3^n-2^(n+1)+1)
cat("\nMaximum Frequent Itemset Size:",max(sapply(t,length)))
