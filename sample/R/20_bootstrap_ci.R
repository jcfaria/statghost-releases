# Objective: Bootstrap percentile CI for the mean, with histogram of replicates.
# Blank lines = sniper chunks. Overlays stay with hist().

set.seed(20)
x <- rgamma(40,
            shape = 2,
            rate = 0.5)
B <- 800
boots <- replicate(B, mean(sample(x, replace = TRUE)))
ci <- quantile(boots, c(0.025, 0.975))

c(mean = mean(x),
  lo = unname(ci[1]),
  hi = unname(ci[2]))

# histogram of bootstrap means + mean/CI overlays
hist(boots,
     breaks = 30,
     col = "steelblue",
     border = "white",
     main = "sample 20 — bootstrap means",
     xlab = "mean*")
abline(v = mean(x),
       col = 2,
       lwd = 2)
abline(v = ci,
       col = 4,
       lwd = 2,
       lty = 2)
message("PASS 20_bootstrap_ci")
