# Objective: Filled contour of a smooth 2D surface (two bumps).
# Blank lines = sniper chunks.

set.seed(22)
x <- seq(-2,
         2,
         length.out = 60)
y <- seq(-2,
         2,
         length.out = 60)

# two-bump surface
f <- function(u, v) {
  exp(-(u^2 + v^2)) +
    0.6 * exp(-((u - 1)^2 + (v + 0.5)^2) / 0.4)
}
z <- outer(x, y, f)

filled.contour(x,
               y,
               z,
               color.palette = terrain.colors,
               main = "sample 22 — filled contour",
               xlab = "x",
               ylab = "y")
