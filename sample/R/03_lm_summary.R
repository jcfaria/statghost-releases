# Objective: Fit a simple linear model and print summary / coefficients (text only).

set.seed(7)
n <- 30

x <- runif(n,
           0,
           10)

y <- 1.5 + 0.8 * x + rnorm(n, sd = 1.2)

fit <- lm(y ~ x)

summary(fit)
coef(fit)
