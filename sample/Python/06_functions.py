# Objective: Functions — defs survive later clipboard chunks in a live REPL.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# No blank lines inside def bodies (progressive REPL closes on blank).

def add(x, y):
    return x + y

def square(x):
    return x * x

assert add(2, 3) == 5
assert square(4) == 16
print(add(10, 32), square(5))
print("PASS 06_functions")
