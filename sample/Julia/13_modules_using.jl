# Objective: Import stdlib module Statistics with using.
# Blank lines = sniper chunks.

using Statistics

xs = [1.0, 2.0, 3.0, 4.0]
@assert mean(xs) == 2.5
@assert median(xs) == 2.5

println("PASS 13_modules_using mean=$(mean(xs))")
