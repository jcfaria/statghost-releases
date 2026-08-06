# Objective: Kernel density with rug marks under the curve.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).

set.seed(35)
x <- c(rnorm(80, 0, 1),
       rnorm(40, 2.5, 0.8))

# text prelude — mixture summary
d <- density(x)
c(n = length(x),
  mean = mean(x),
  sd = sd(x),
  dens_mode_x = d$x[which.max(d$y)])

#. --- GRAPHIC OUTPUT ---

plot(d,
     lwd = 2,
     col = "darkgreen",
     main = "sample 35 — density + rug",
     xlab = "x")
rug(x,
    col = adjustcolor("gray20", 0.45),
    ticksize = 0.03)
abline(v = mean(x),
       col = 2,
       lty = 2,
       lwd = 2)
message("PASS 35_density_rug")
