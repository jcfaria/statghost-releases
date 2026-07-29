# Objective: Functions — defs survive later clipboard chunks in a live REPL.
# No blank lines inside def bodies (progressive REPL closes on blank).

def add(x, y):
    return x + y

def square(x):
    return x * x

assert add(2, 3) == 5
assert square(4) == 16
print(add(10, 32), square(5))
print("PASS 06_functions")
