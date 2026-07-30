# Objective: Monte Carlo π estimate — small n for classroom sniper speed.
# Blank lines = sniper chunks.

using Random
using Statistics

Random.seed!(123)
n = 5_000

# Step A — uniform draws in the unit square
x = rand(n)
y = rand(n)

# Step B — hits inside the quarter circle
inside = x .^ 2 .+ y .^ 2 .<= 1
pi_hat = 4 * mean(inside)

@assert abs(pi_hat - π) < 0.05

println("PASS 21_monte_carlo pi_hat=$pi_hat")
