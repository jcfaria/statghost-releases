# Objective: Multi-line text only (no graphics) — vectors, data.frame, cor, summary.

set.seed(42)
x <- rnorm(8)

# noisy linear relation
y <- 2 * x + rnorm(8, sd = 0.3)

data.frame(x = round(x, 3),
           y = round(y, 3))

cor(x, y)
summary(y)
message("PASS 02_vectors")
