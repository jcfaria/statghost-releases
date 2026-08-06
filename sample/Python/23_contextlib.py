# Objective: Context manager that temporarily reseeds random and restores state.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
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
