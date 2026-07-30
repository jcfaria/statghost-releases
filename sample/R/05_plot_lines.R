# Objective: Scatter plus reference line and smoother (exercises PDF/PNG dual-draw).
# Blank lines = sniper chunks. Overlays stay in the same chunk as plot().

set.seed(21)
x <- 1:20
y <- 2 + 0.7 * x + rnorm(20, sd = 2.5)

# one deliberate outlier
y[14] <- 4

plot(x,
     y,
     pch = 16,
     main = "sample 05 — lines")
abline(lm(y ~ x),
       col = "red",
       lwd = 2)
abline(a = 0,
       b = 1,
       lty = 3)
lines(lowess(x, y), lwd = 2)
message("PASS 05_plot_lines")
