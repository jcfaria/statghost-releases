# Objective: Nonparametric Wilcoxon + KS tests with overlaid ecdf curves.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).

set.seed(28)
a <- rnorm(35, 0, 1)
b <- rnorm(40, 0.55, 1.1)

wilcox.test(a, b)
ks.test(a, b)

#. --- GRAPHIC OUTPUT ---

plot(ecdf(a),
     main = "sample 28 — ecdf A vs B",
     xlab = "x",
     ylab = "Fn(x)",
     col = 2,
     do.points = FALSE,
     lwd = 2)
plot(ecdf(b),
     add = TRUE,
     col = 4,
     do.points = FALSE,
     lwd = 2)
legend("bottomright",
       legend = c("A", "B"),
       col = c(2, 4),
       lwd = 2,
       bty = "n")
message("PASS 28_wilcox_ks_ecdf")
