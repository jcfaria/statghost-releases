# Objective: Bootstrap percentile CI for the mean, with histogram of replicates.
# Blank lines = sniper chunks.

set.seed(20)
x <- rgamma(40,
            shape = 2,
            rate = 0.5)
B <- 2000
boots <- replicate(B, mean(sample(x, replace = TRUE)))
ci <- quantile(boots, c(0.025, 0.975))

c(mean = mean(x),
  lo = unname(ci[1]),
  hi = unname(ci[2]))

# histogram of bootstrap means
hist(boots,
     breaks = 40,
     col = "steelblue",
     border = "white",
     main = "sample 20 — bootstrap means",
     xlab = "mean*")

# sample mean (solid) and CI ends (dashed)
abline(v = mean(x),
       col = 2,
       lwd = 2)
abline(v = ci,
       col = 4,
       lwd = 2,
       lty = 2)
