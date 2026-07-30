# Objective: Generator expressions and collect without huge temps.
# Blank lines = sniper chunks.

g = (i^2 for i in 1:10 if iseven(i))
v = collect(g)
@assert v == [4, 16, 36, 64, 100]

s = sum(i for i in 1:100)
@assert s == 5050

println("PASS 25_generators")
