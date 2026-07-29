# Objective: Vectors, matrices, and element-wise ops (Base arrays).
# Blank lines = sniper chunks.

v = [1, 2, 3, 4]
@assert sum(v) == 10
@assert v .^ 2 == [1, 4, 9, 16]

M = [1 2; 3 4]
@assert size(M) == (2, 2)
@assert M[2, 1] == 3

println("PASS 04_arrays sum=$(sum(v))")
