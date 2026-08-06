# Objective: Wide console output stress — compact matrix / data.frame / by().
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).

set.seed(26)
m <- matrix(round(rnorm(6 * 4), 3),
            nrow = 6,
            dimnames = list(paste0("r", 1:6),
                            paste0("c", 1:4)))
m

# compact data.frame print
df <- as.data.frame(m)
df$group <- gl(3, 2, labels = c("A", "B", "C"))
df

# summary chain
by(df[, 1:4],
   df$group,
   function(d) round(colMeans(d), 3))
message("PASS 26_wide_output")
