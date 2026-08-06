# Objective: Filled contour of a smooth 2D surface (two bumps).
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
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

# text prelude
c(nx = length(x),
  ny = length(y),
  z_min = min(z),
  z_max = max(z))

#. --- GRAPHIC OUTPUT ---

filled.contour(x,
               y,
               z,
               color.palette = terrain.colors,
               main = "sample 22 — filled contour",
               xlab = "x",
               ylab = "y")
message("PASS 22_contour_surface")
