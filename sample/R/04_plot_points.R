# Objective: Basic scatter plot for PNG/PDF dual-draw smoke.

set.seed(17)
x <- rnorm(10)
y <- rnorm(10)

plot(x,
     y,
     main = "sample 04 — points",
     pch = 16)
message("PASS 04_plot_points")
