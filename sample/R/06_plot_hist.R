# Objective: Histogram of a normal sample (graphics smoke).

set.seed(99)
hist(rnorm(200),
     breaks = 15,
     col = "steelblue",
     border = "white",
     main = "sample 06 — hist",
     xlab = "z")
message("PASS 06_plot_hist")
