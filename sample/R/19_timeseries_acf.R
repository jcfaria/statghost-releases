# Objective: Seasonal time series overview plus ACF / PACF panels.

set.seed(19)
t <- 1:120
y <- 10 + 0.05 * t + sin(2 * pi * t / 12) + rnorm(120, sd = 0.8)
tsy <- ts(y,
          frequency = 12,
          start = c(2015, 1))

# text prelude
summary(tsy)
c(start = start(tsy)[1],
  frequency = frequency(tsy),
  n = length(tsy))

# --- GRAPHIC OUTPUT ---

# overview
plot(tsy,
     main = "sample 19 — seasonal series",
     ylab = "y")

# ACF / PACF (second chunk → new plot; history ←/→)

oldpar <- par(no.readonly = TRUE)
par(mfrow = c(1, 2),
    mar = c(4, 4, 3.5, 1))
acf(tsy, main = "sample 19 — ACF")
pacf(tsy, main = "sample 19 — PACF")
par(oldpar)
message("PASS 19_timeseries_acf")
