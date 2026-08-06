# Objective: Minimal hello — first Arm / Ctrl+C smoke for the Julia sniper.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# Blank lines = sniper chunks.

println("hello from STATghost Julia")

1 + 1

randn(5)

@assert 1 + 1 == 2

println("PASS 01_hello")
