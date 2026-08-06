# Objective: Basic arithmetic — ints, floats, floor division, and rounding.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).

a, b = 7, 3
assert a + b == 10
assert a * b == 21
assert a // b == 2
assert round(a / b, 4) == 2.3333
print(a, b, a / b)
print("PASS 02_arithmetic")
