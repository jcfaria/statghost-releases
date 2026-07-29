# Objective: Distinguish models linear in parameters (lm) from nonlinear (nls).
# Uses BOD and a self-starting asymptotic model. Blank lines = sniper chunks.

# check linearity via derivatives w.r.t. parameters
fl <- expression(a + b * x)                 # degree-I polynomial
fq <- expression(a + b1 * x + b2 * x^2)     # degree-II polynomial
fe <- expression(a * exp(x / b))            # exponential — nonlinear

# derivatives independent of params → linear → lm
deriv(fl,
      c("a", "b"))

deriv(fq,
      c("a", "b1", "b2"))

# derivatives depend on params → nonlinear → nls
deriv(fe,
      c("a", "b"))

# curve shapes
a <- 1
b <- 2
b1 <- 1
b2 <- -0.5
x <- seq(from = -10,
         to = 10,
         by = 0.5)

oldpar <- par(no.readonly = TRUE)
par(mfrow = c(1, 1))

# linear / quadratic / exponential demos (one figure each)
plot(eval(fl) ~ x, type = "b")

plot(eval(fq) ~ x, type = "b")

plot(eval(fe) ~ x, type = "b")

# sign flips change the exponential shape
plot(eval(expression(-a * exp(x / b))) ~ x, type = "b")

plot(eval(expression(a * exp(x / -b))) ~ x, type = "b")

plot(eval(expression(-a * exp(x / -b))) ~ x, type = "b")

# BOD dataset — first-order growth model
str(BOD)
BOD

with(BOD,
     plot(demand ~ Time,
          xlim = c(0, 8),
          ylim = c(0, 20)))

m_1 <- nls(demand ~ a * (1 - exp(-exp(b) * Time)),
           data = BOD,
           start = c(a = 20,
                     b = log(0.35)),
           trace = TRUE)

summary(m_1)
coef(m_1)
m_1

with(BOD,
     points(predict(m_1) ~ Time,
            col = "red",
            pch = 19))

with(BOD,
     lines(spline(predict(m_1) ~ Time, n = 1e3),
           col = "red",
           lwd = 2))

par(oldpar)

# self-starting alternative
fm3 <- nls(demand ~ SSasympOrig(Time, a, b),
           data = BOD,
           trace = TRUE)
summary(fm3)
coef(fm3)
fm3
