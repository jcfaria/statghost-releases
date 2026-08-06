# Objective: Integers, floats, rationals, and basic asserts.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# Blank lines = sniper chunks.

a = 7
b = 3

@assert a ÷ b == 2
@assert a / b ≈ 2.3333333333333335
@assert 2 // 4 == 1 // 2
@assert 2^10 == 1024

println("PASS 02_arithmetic a=$a b=$b")
