# Objective: Ordinary least squares via LinearAlgebra (no GLM.jl).
# Blank lines = sniper chunks.

using LinearAlgebra
using Random

Random.seed!(9)
n = 200

# Step A — design matrix and true coefficients
x = randn(n)
X = [ones(n) x]
β_true = [1.5, -0.7]

# Step B — noisy response
y = X * β_true .+ 0.05 .* randn(n)

# Step C — solve and check against truth
β_hat = X \ y
@assert norm(β_hat - β_true) < 0.1
println("PASS 27_least_squares β=$β_hat")
