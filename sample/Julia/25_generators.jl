# Objective: Generator expressions and collect without huge temps.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# Blank lines = sniper chunks.

g = (i^2 for i in 1:10 if iseven(i))
v = collect(g)
@assert v == [4, 16, 36, 64, 100]

s = sum(i for i in 1:100)
@assert s == 5050

println("PASS 25_generators")
