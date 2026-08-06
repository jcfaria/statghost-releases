# Objective: Seeded RNG for reproducible Monte Carlo chunks.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# Blank lines = sniper chunks.

using Random
using Statistics

Random.seed!(42)
z = randn(100)

@assert abs(mean(z)) < 0.25
@assert 0.7 < std(z) < 1.3

println("PASS 16_random_seed mean=$(mean(z))")
