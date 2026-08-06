# Objective: Small matrix algebra — crossprod, QR solve, apply, eigenvalues.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).

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
message("PASS 09_matrix_apply")
