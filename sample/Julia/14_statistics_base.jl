# Objective: Deeper Statistics stdlib — std, quantile, cor.
# Blank lines = sniper chunks.

using Statistics

x = [1.0, 2.0, 3.0, 4.0, 5.0]
y = [2.0, 4.0, 6.0, 8.0, 10.0]

@assert std(x) > 0
@assert quantile(x, 0.5) == 3.0
@assert cor(x, y) ≈ 1.0
println("PASS 14_statistics_base")
