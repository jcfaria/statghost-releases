# Objective: Multi-line text only (no graphics) — vectors, data.frame, cor, summary.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).

set.seed(42)
x <- rnorm(8)

# noisy linear relation
y <- 2 * x + rnorm(8, sd = 0.3)

data.frame(x = round(x, 3),
           y = round(y, 3))

cor(x, y)
summary(y)
message("PASS 02_vectors")
