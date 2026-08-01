# Objective: Design matrix rank via QR, then residual-vs-fitted diagnostics.
# Blank lines = sniper chunks. Overlays stay with plot().

set.seed(21)
n <- 80
Xdf <- data.frame(
  a = factor(sample(c("L", "M", "H"),
                    n,
                    TRUE)),
  b = rnorm(n),
  c = runif(n)
)
y <- with(Xdf, 2 + 0.8 * b - 1.2 * (a == "H") + rnorm(n))
fit <- lm(y ~ a + b + c, data = Xdf)
summary(fit)

# design matrix rank
MM <- model.matrix(fit)
c(n = nrow(MM),
  p = ncol(MM),
  rank = qr(MM)$rank)

# --- GRAPHIC OUTPUT ---

# residual vs fitted (+ zero line and smoother)
plot(fitted(fit),
     resid(fit),
     pch = 16,
     main = "sample 21 — resid vs fitted",
     xlab = "fitted",
     ylab = "resid")
abline(h = 0,
       lty = 2,
       col = "gray40")
lines(lowess(fitted(fit), resid(fit)),
      col = 2,
      lwd = 2)
message("PASS 21_model_matrix_qr")
