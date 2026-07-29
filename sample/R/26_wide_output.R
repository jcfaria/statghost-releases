# Objective: Wide console output stress — matrix / data.frame / by() summaries.

set.seed(26)
m <- matrix(round(rnorm(12 * 8), 3),
            nrow = 12,
            dimnames = list(paste0("r", 1:12),
                            paste0("c", 1:8)))
m

# wide data.frame print
df <- as.data.frame(m)
df$group <- gl(3, 4, labels = c("A", "B", "C"))
df

# summary chain
by(df[, 1:8],
   df$group,
   function(d) round(colMeans(d), 3))
