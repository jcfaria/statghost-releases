# Objective: Overlay challenge — base plot, then lines/points in later chunks.
# Eval whole file, or chunk1 then chunk2 to exercise .statg.replay.
# Blank lines = sniper chunks.

set.seed(27)
x <- 1:40
y <- sin(x / 4) + rnorm(40, sd = 0.25)

# chunk: canvas
plot(x,
     y,
     pch = 16,
     col = "gray50",
     main = "sample 27 — overlay replay",
     xlab = "x",
     ylab = "y")

# chunk: overlays (needs previous device display list)
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
