# Objective: Scatterplot matrix (pairs) for a small correlated multivariate sample.

set.seed(34)
n <- 60
x1 <- rnorm(n)
x2 <- 0.7 * x1 + 0.3 * rnorm(n)
x3 <- -0.4 * x1 + 0.5 * x2 + 0.4 * rnorm(n)
df <- data.frame(x1, x2, x3)

round(cor(df), 2)
summary(df)

# --- GRAPHIC OUTPUT ---

pairs(df,
      pch = 16,
      col = adjustcolor("navy", 0.55),
      main = "sample 34 — pairs")
message("PASS 34_pairs")
