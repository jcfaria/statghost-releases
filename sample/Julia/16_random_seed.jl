# Objective: Seeded RNG for reproducible Monte Carlo chunks.
# Blank lines = sniper chunks.

using Random
using Statistics

Random.seed!(42)
z = randn(1000)

@assert abs(mean(z)) < 0.1
@assert 0.8 < std(z) < 1.2
println("PASS 16_random_seed mean=$(mean(z))")
