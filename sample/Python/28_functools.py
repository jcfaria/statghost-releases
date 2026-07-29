# Objective: functools — lru_cache memoization and partial application.
# No blank lines inside def bodies (progressive REPL closes on blank).

from functools import lru_cache, partial

@lru_cache(maxsize=None)
def fib(n: int) -> int:
    if n < 2:
        return n
    return fib(n - 1) + fib(n - 2)

assert fib(20) == 6765
print("fib(20)=", fib(20), "cache=", fib.cache_info())

double = partial(lambda a, b: a * b, b=2)
assert double(21) == 42
print("PASS 28_functools")
