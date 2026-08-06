# Objective: Fit a simple linear model and print summary / coefficients (text only).
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).

set.seed(7)
n <- 30

x <- runif(n,
           0,
           10)

y <- 1.5 + 0.8 * x + rnorm(n, sd = 1.2)

fit <- lm(y ~ x)

summary(fit)
coef(fit)
message("PASS 03_lm_summary")
