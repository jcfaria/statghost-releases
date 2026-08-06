# Objective: Generator / yield — lazy Fibonacci sequence.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).

def fib(n: int):
    a, b = 0, 1
    for _ in range(n):
        yield a
        a, b = b, a + b

seq = list(fib(12))
assert seq[:6] == [0, 1, 1, 2, 3, 5]
print(seq)
print("PASS 17_generators")
