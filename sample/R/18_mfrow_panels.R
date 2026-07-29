# Objective: One PNG with four base-graphics panels via par(mfrow).
# Light chunk comments; keep as one figure for TF capture.

set.seed(18)
# 2×2 layout
par(mfrow = c(2, 2),
    mar = c(4, 4, 2.5, 1))

z <- rnorm(200)

# panel 1: histogram
hist(z,
     col = "gray80",
     border = "white",
     main = "hist",
     xlab = "z")

# panel 2: boxplot
boxplot(z,
        horizontal = TRUE,
        main = "boxplot",
        col = "lightblue")

# panel 3: QQ
qqnorm(z,
       pch = 16,
       cex = 0.7,
       main = "QQ")
qqline(z,
       col = 2,
       lwd = 2)

# panel 4: density + rug
plot(density(z),
     main = "density",
     xlab = "z",
     lwd = 2,
     col = "darkgreen")
rug(z)

par(mfrow = c(1, 1))
