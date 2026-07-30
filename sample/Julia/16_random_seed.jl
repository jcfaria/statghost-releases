# Objective: Seeded RNG for reproducible Monte Carlo chunks.
# Blank lines = sniper chunks.

using Random
using Statistics

Random.seed!(42)
z = randn(100)

@assert abs(mean(z)) < 0.25
@assert 0.7 < std(z) < 1.3

println("PASS 16_random_seed mean=$(mean(z))")
