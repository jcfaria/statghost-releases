# Objective: Verify classic expectation (E) and variance (V) properties of r.v.s.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# Includes a plot of Y vs Z = Y^2 (dependence without linear correlation).

# K is a constant
(K <- 5)

#. E(K) = K
mean(rep(K, K)) == K

#. E(Y ± K) = E(Y) ± K
(Y <- -10:10)

round(mean(Y + K), 5) ==
  round(mean(Y) + K, 5)

round(mean(Y - K), 5) ==
  round(mean(Y) - K, 5)

#. E(K*Y) = K * E(Y)
round(mean(K * Y), 5) ==
  round(K * mean(Y), 5)

#. E(Y ± Z) = E(Y) ± E(Z)
(Z <- Y^2)

round(mean(Y + Z), 5) ==
  round(mean(Y) + mean(Z), 5)

round(mean(Y - Z), 5) ==
  round(mean(Y) - mean(Z), 5)

#. If independent: E(YZ) = E(Y)*E(Z) — here Y and Z are dependent
cov(Y, Z)

round(mean(Y * Z), 5) ==
  round(mean(Y) * mean(Z), 5)

#. V(K) = 0
var(rep(K, K)) == 0

#. V(Y ± K) = V(Y)
round(var(Y + K), 5) ==
  round(var(Y), 5)

round(var(Y - K), 5) ==
  round(var(Y), 5)

#. V(K*Y) = K^2 * V(Y)
round(var(K * Y), 5) ==
  round(K^2 * var(Y), 5)

#. Cov = 0 is not proof of independence
cov(Y, Z)

#. If independent: V(Y ± Z) = V(Y) + V(Z)
round(var(Y + Z), 5) ==
  round(var(Y) + var(Z), 5)

round(var(Y - Z), 5) ==
  round(var(Y) + var(Z), 5)

#. Dependent case: V(Y ± Z) = V(Y) + V(Z) ± 2*Cov(Y, Z)
(Y2 <- 1:20)
(Z2 <- 2 * Y2)
cov(Y2, Z2)
cor(Y2, Z2)

round(var(Y2 + Z2), 2) ==
  round(var(Y2) + var(Z2) + 2 * cov(Y2, Z2), 2)

round(var(Y2 - Z2), 5) ==
  round(var(Y2) + var(Z2) - 2 * cov(Y2, Z2), 5)

#. --- GRAPHIC OUTPUT ---

#. Y and Z = Y^2: dependence with near-zero linear correlation
plot(Z ~ Y,
     pch = 20,
     main = "sample 14 — Y vs Z=Y^2")
abline(v = mean(Y), col = 2)
abline(h = mean(Z), col = 4)
message("PASS 14_va_propriedades")
