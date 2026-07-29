# Objective: Context manager that temporarily reseeds random and restores state.
# No blank lines inside the generator body (progressive REPL closes on blank).

from contextlib import contextmanager
import random

@contextmanager
def temp_seed(seed: int):
    state = random.getstate()
    random.seed(seed)
    try:
        yield
    finally:
        random.setstate(state)

with temp_seed(23):
    a = [random.random() for _ in range(3)]
with temp_seed(23):
    b = [random.random() for _ in range(3)]
assert a == b
print(a)
print("PASS 23_contextlib")
