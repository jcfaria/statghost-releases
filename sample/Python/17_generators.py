# Objective: Generator / yield — lazy Fibonacci sequence.

def fib(n: int):
    a, b = 0, 1
    for _ in range(n):
        yield a
        a, b = b, a + b

seq = list(fib(12))
assert seq[:6] == [0, 1, 1, 2, 3, 5]
print(seq)
print("PASS 17_generators")
