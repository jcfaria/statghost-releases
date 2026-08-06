# Objective: Array comprehensions and filters.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# Blank lines = sniper chunks.

odds = [i for i in 1:10 if isodd(i)]
@assert odds == [1, 3, 5, 7, 9]

sq = [i^2 for i in 1:4]
@assert sq == [1, 4, 9, 16]

println("PASS 09_comprehensions")
