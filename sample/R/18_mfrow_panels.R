# Objective: One PNG with four base-graphics panels via par(mfrow).
# Light chunk comments; keep as one figure for TF capture.

set.seed(18)
z <- rnorm(200)

# text prelude — moments before the 2×2 panel
c(n = length(z),
  mean = mean(z),
  sd = sd(z),
  skew_hint = mean((z - mean(z))^3) / sd(z)^3)

# --- GRAPHIC OUTPUT ---

oldpar <- par(no.readonly = TRUE)

# 2×2 layout
par(mfrow = c(2, 2),
    mar = c(4, 4, 2.5, 1))

# panel 1: histogram
hist(z,
     col = "gray80",
     border = "white",
     main = "sample 18 — hist",
     xlab = "z")

# panel 2: boxplot
boxplot(z,
        horizontal = TRUE,
        main = "sample 18 — boxplot",
        col = "lightblue")

# panel 3: QQ
qqnorm(z,
       pch = 16,
       cex = 0.7,
       main = "sample 18 — QQ")
qqline(z,
       col = 2,
       lwd = 2)

# panel 4: density + rug
plot(density(z),
     main = "sample 18 — density",
     xlab = "z",
     lwd = 2,
     col = "darkgreen")
rug(z)

par(oldpar)
message("PASS 18_mfrow_panels")
