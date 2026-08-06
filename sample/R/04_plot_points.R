# Objective: Basic scatter plot for PNG/PDF dual-draw smoke.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).

set.seed(17)
x <- rnorm(10)
y <- rnorm(10)

# text prelude — summary of the cloud
c(n = length(x),
  mean_x = mean(x),
  mean_y = mean(y),
  cor = cor(x, y))

#. --- GRAPHIC OUTPUT ---

plot(x,
     y,
     main = "sample 04 — points",
     pch = 16)
message("PASS 04_plot_points")
