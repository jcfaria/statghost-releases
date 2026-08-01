# Objective: Histogram of a normal sample (graphics smoke).

set.seed(99)
z <- rnorm(200)

# text prelude — location / scale
c(n = length(z),
  mean = mean(z),
  sd = sd(z))

# --- GRAPHIC OUTPUT ---

hist(z,
     breaks = 15,
     col = "steelblue",
     border = "white",
     main = "sample 06 — hist",
     xlab = "z")
message("PASS 06_plot_hist")
