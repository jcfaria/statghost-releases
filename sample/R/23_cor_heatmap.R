# Objective: Correlation heatmap via image() for a correlated multivariate sample.
# Blank lines = sniper chunks.

set.seed(23)
p <- 6
R <- matrix(0.35, p, p)
diag(R) <- 1
L <- chol(R)
Z <- matrix(rnorm(200 * p), 200, p) %*% L
colnames(Z) <- paste0("V", 1:p)
C <- cor(Z)
round(C, 2)

# heatmap (row flip so V1 is at the top)
image(1:p,
      1:p,
      C[, p:1],
      zlim = c(-1, 1),
      col = hcl.colors(20, "Blue-Red 3"),
      axes = FALSE,
      main = "sample 23 — cor heatmap",
      xlab = "",
      ylab = "")

axis(1,
     at = 1:p,
     labels = colnames(C))
axis(2,
     at = 1:p,
     labels = rev(colnames(C)),
     las = 1)
message("PASS 23_cor_heatmap")
