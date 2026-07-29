# Objective: Stdlib statistics — seeded Gaussian sample mean and stdev.

import random
import statistics

random.seed(17)
xs = [random.gauss(10, 2) for _ in range(200)]
m = statistics.mean(xs)
s = statistics.stdev(xs)
assert 8.0 < m < 12.0
assert 1.0 < s < 3.5
print(f"n={len(xs)} mean={m:.4f} sd={s:.4f}")
print("PASS 10_stdlib_stats")
