# Objective: Seasonal time series overview plus ACF / PACF panels.

set.seed(19)
t <- 1:120
y <- 10 + 0.05 * t + sin(2 * pi * t / 12) + rnorm(120, sd = 0.8)
tsy <- ts(y,
          frequency = 12,
          start = c(2015, 1))

# overview
plot(tsy,
     main = "sample 19 — seasonal series",
     ylab = "y")

# ACF / PACF (second chunk → new plot; history ←/→)
par(mfrow = c(1, 2),
    mar = c(4, 4, 2.5, 1))
acf(tsy, main = "ACF")
pacf(tsy, main = "PACF")
par(mfrow = c(1, 1))
