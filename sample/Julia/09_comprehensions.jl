# Objective: Array comprehensions and filters.
# Blank lines = sniper chunks.

odds = [i for i in 1:10 if isodd(i)]
@assert odds == [1, 3, 5, 7, 9]

sq = [i^2 for i in 1:4]
@assert sq == [1, 4, 9, 16]

println("PASS 09_comprehensions")
