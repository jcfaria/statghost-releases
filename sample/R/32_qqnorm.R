# Objective: QQ-normal plot for a seeded sample (text summary then graphic).

set.seed(32)
z <- rnorm(120, mean = 2, sd = 1.5)

# text prelude
c(n = length(z),
  mean = mean(z),
  sd = sd(z),
  skew = mean((z - mean(z))^3) / sd(z)^3)

shapiro.test(z)

# --- GRAPHIC OUTPUT ---

qqnorm(z,
       pch = 16,
       cex = 0.8,
       main = "sample 32 — QQ-normal")
qqline(z,
       col = 2,
       lwd = 2)
message("PASS 32_qqnorm")
