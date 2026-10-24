data(mtcars)
mtcars$cyl_factor <- as.factor(mtcars$cyl)
boxplot(mpg ~ cyl_factor, data = mtcars,
        main = "Miles Per Gallon by Number of Cylinders",
        xlab = "Number of Cylinders (cyl)",
        ylab = "Miles Per Gallon (mpg)",
        col = c("lightblue", "lightgreen", "lightpink"),
        border = "darkblue")
