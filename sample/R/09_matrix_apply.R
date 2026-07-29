# Objective: Small matrix algebra — crossprod, QR solve, apply, eigenvalues.

set.seed(3)
A <- matrix(rnorm(9),
            3,
            3)

b <- rnorm(3)

A

crossprod(A)  # A'A

qr.coef(qr(A), b)  # least-squares solve A x ≈ b

apply(A,
      2,
      mean)

eigen(crossprod(A), only.values = TRUE)$values
