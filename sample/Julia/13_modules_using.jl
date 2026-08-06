# Objective: Import stdlib module Statistics with using.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# Blank lines = sniper chunks.

using Statistics

xs = [1.0, 2.0, 3.0, 4.0]
@assert mean(xs) == 2.5
@assert median(xs) == 2.5

println("PASS 13_modules_using mean=$(mean(xs))")
