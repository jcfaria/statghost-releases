# Objective: LinearAlgebra solve and eigen on a small SPD matrix.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# Blank lines = sniper chunks.

using LinearAlgebra

A = [4.0 1.0; 1.0 3.0]
b = [1.0, 2.0]
x = A \ b
@assert A * x ≈ b

evals = eigvals(Symmetric(A))
@assert all(evals .> 0)

println("PASS 15_linear_algebra")
