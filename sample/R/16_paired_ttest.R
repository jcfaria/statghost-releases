# Objective: Paired t-test, Cohen's d, and stripchart of paired differences.

set.seed(16)
n <- 24
before <- rnorm(n,
                mean = 70,
                sd = 8)
after <- before + rnorm(n,
                        mean = 3.5,
                        sd = 4)

# paired test
t.test(after,
       before,
       paired = TRUE)

# Cohen's d (paired)
d <- mean(after - before) / sd(after - before)
c(cohen_d = d, mean_diff = mean(after - before))

# stripchart of differences
diff <- after - before
stripchart(diff,
           method = "jitter",
           pch = 16,
           vertical = TRUE,
           main = "sample 16 — paired diffs",
           ylab = "after - before")
abline(h = 0, lty = 2, col = "gray40")
abline(h = mean(diff), col = 2, lwd = 2)
message("PASS 16_paired_ttest")
