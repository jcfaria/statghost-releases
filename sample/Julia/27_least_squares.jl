# Objective: Ordinary least squares via LinearAlgebra (+ optional resid plot).
# Blank lines = sniper chunks.

using LinearAlgebra
using Random

Random.seed!(9)
n = 80

# Step A — design matrix and true coefficients
x = randn(n)
X = [ones(n) x]
β_true = [1.5, -0.7]

# Step B — noisy response
y = X * β_true .+ 0.05 .* randn(n)

# Step C — solve and check against truth
β_hat = X \ y
@assert norm(β_hat - β_true) < 0.15
println("PASS 27_least_squares β=$β_hat")

# optional residual scatter
try
    ENV["GKSwstype"] = "100"
    using Plots
    yhat = X * β_hat
    resid = y .- yhat
    scatter(yhat, resid;
            legend = false,
            title = "resid vs fitted",
            ms = 8,
            color = :crimson,
            markerstrokewidth = 1,
            markerstrokecolor = :black,
            show = false)
    hline!([0.0];
           linestyle = :dash,
           lw = 3,
           color = :navy,
           label = "")
    println("PASS 27_plot")
catch e
    println("SKIP 27_plot (Pkg): ", e)
end
