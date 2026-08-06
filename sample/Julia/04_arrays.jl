# Objective: Vectors, matrices, and element-wise ops (Base arrays).
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# Blank lines = sniper chunks.

v = [1, 2, 3, 4]
@assert sum(v) == 10
@assert v .^ 2 == [1, 4, 9, 16]

M = [1 2; 3 4]
@assert size(M) == (2, 2)
@assert M[2, 1] == 3

println("PASS 04_arrays sum=$(sum(v))")
