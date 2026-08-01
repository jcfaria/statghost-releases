# Objective: Base plot with lowess + highlight points (one figure, one chunk).
# Keep overlays with plot() so progressive Arm never hits "plot.new has not
# been called yet". (Product still supports .statg.replay when chunks split.)
# Blank lines = sniper chunks.

set.seed(27)
x <- 1:40
y <- sin(x / 4) + rnorm(40, sd = 0.25)

# text prelude
c(n = length(x),
  mean_y = mean(y),
  sd_y = sd(y))

# --- GRAPHIC OUTPUT ---

plot(x,
     y,
     pch = 16,
     col = "gray50",
     main = "sample 27 — overlay",
     xlab = "x",
     ylab = "y")
lines(lowess(x, y),
      col = 2,
      lwd = 2)
points(x[c(5, 20, 35)],
       y[c(5, 20, 35)],
       pch = 1,
       cex = 2,
       col = 4)
legend("topright",
       legend = c("data", "lowess", "highlights"),
       col = c("gray50", 2, 4),
       pch = c(16, NA, 1),
       lty = c(NA, 1, NA),
       lwd = c(NA, 2, NA),
       bty = "n")
message("PASS 27_overlay_replay")
