# Objective: Verify classic expectation (E) and variance (V) properties of r.v.s.
# Includes a plot of Y vs Z = Y^2 (dependence without linear correlation).

# K is a constant
(K <- 5)

# E(K) = K
mean(rep(K, K)) == K

# E(Y ± K) = E(Y) ± K
(Y <- -10:10)

round(mean(Y + K), 5) ==
  round(mean(Y) + K, 5)

round(mean(Y - K), 5) ==
  round(mean(Y) - K, 5)

# E(K*Y) = K * E(Y)
round(mean(K * Y), 5) ==
  round(K * mean(Y), 5)

# E(Y ± Z) = E(Y) ± E(Z)
(Z <- Y^2)

round(mean(Y + Z), 5) ==
  round(mean(Y) + mean(Z), 5)

round(mean(Y - Z), 5) ==
  round(mean(Y) - mean(Z), 5)

# If independent: E(YZ) = E(Y)*E(Z) — here Y and Z are dependent
plot(Z ~ Y, pch = 20)
abline(v = mean(Y), col = 2)
abline(h = mean(Z), col = 4)

cov(Y, Z)

round(mean(Y * Z), 5) ==
  round(mean(Y) * mean(Z), 5)

# V(K) = 0
var(rep(K, K)) == 0

# V(Y ± K) = V(Y)
round(var(Y + K), 5) ==
  round(var(Y), 5)

round(var(Y - K), 5) ==
  round(var(Y), 5)

# V(K*Y) = K^2 * V(Y)
round(var(K * Y), 5) ==
  round(K^2 * var(Y), 5)

# Cov = 0 is not proof of independence
cov(Y, Z)

# If independent: V(Y ± Z) = V(Y) + V(Z)
round(var(Y + Z), 5) ==
  round(var(Y) + var(Z), 5)

round(var(Y - Z), 5) ==
  round(var(Y) + var(Z), 5)

# Dependent case: V(Y ± Z) = V(Y) + V(Z) ± 2*Cov(Y, Z)
(Y <- 1:20)
(Z <- 2 * Y)
cov(Y, Z)
cor(Y, Z)

round(var(Y + Z), 2) ==
  round(var(Y) + var(Z) + 2 * cov(Y, Z), 2)

round(var(Y - Z), 5) ==
  round(var(Y) + var(Z) - 2 * cov(Y, Z), 5)
