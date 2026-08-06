# Objective: CLT simulation — distribution of sample means from a skewed parent.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# Blank lines = sniper chunks. Normal overlay stays with hist().

set.seed(24)
n <- 12
reps <- 600

# skewed parent
pop <- function(m) {
  rgamma(m,
         shape = 1.2,
         rate = 0.7)
}
means <- replicate(reps, mean(pop(n)))

c(parent_skew_hint = "gamma(1.2, 0.7)",
  mean_of_means = mean(means),
  sd_of_means = sd(means),
  theoretical_se = sd(pop(2000)) / sqrt(n))

#. --- GRAPHIC OUTPUT ---

# histogram of sample means + normal overlay
hist(means,
     breaks = 30,
     col = "darkseagreen",
     border = "white",
     main = "sample 24 — CLT (means of n=12)",
     xlab = "x-bar",
     freq = FALSE)
curve(dnorm(x,
            mean(means),
            sd(means)),
      add = TRUE,
      col = 2,
      lwd = 2)
message("PASS 24_clt_simulation")
