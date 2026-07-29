# Objective: CLT simulation — distribution of sample means from a skewed parent.
# Blank lines = sniper chunks.

set.seed(24)
n <- 12
reps <- 1500

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
  theoretical_se = sd(pop(5000)) / sqrt(n))

# histogram of sample means + normal overlay
hist(means,
     breaks = 40,
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
