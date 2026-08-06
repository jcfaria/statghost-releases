# Objective: Histogram of a normal sample (graphics smoke).
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).

set.seed(99)
z <- rnorm(200)

# text prelude — location / scale
c(n = length(z),
  mean = mean(z),
  sd = sd(z))

#. --- GRAPHIC OUTPUT ---

hist(z,
     breaks = 15,
     col = "steelblue",
     border = "white",
     main = "sample 06 — hist",
     xlab = "z")
message("PASS 06_plot_hist")
