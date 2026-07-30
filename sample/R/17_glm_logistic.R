# Objective: Binomial GLM (logistic) with predicted probability curve.
# Blank lines = sniper chunks. Overlays stay with the plot() chunk.

set.seed(17)
n <- 120
x <- runif(n, -3, 3)
eta <- -0.4 + 1.1 * x
p <- 1 / (1 + exp(-eta))
y <- rbinom(n, 1, p)

fit <- glm(y ~ x, family = binomial())
summary(fit)

# probability curve on a grid
xg <- seq(-3,
          3,
          length.out = 200)
pred <- predict(fit,
                newdata = data.frame(x = xg),
                type = "response")

plot(x,
     y,
     pch = 16,
     col = adjustcolor("steelblue", 0.45),
     ylim = c(-0.05, 1.05),
     main = "sample 17 — logistic GLM",
     xlab = "x",
     ylab = "P(y=1)")
lines(xg,
      pred,
      lwd = 2,
      col = 2)
abline(h = 0.5,
       lty = 3)
message("PASS 17_glm_logistic")
