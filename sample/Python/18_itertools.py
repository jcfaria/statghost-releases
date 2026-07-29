# Objective: Itertools recipes — accumulate, pairwise, and islice.
# pairwise requires Python >= 3.10.

from itertools import accumulate, islice, pairwise

xs = list(range(1, 11))
print(list(accumulate(xs)))
print(list(pairwise(xs))[:4])
print(list(islice(xs, 2, 8, 2)))
assert list(accumulate([1, 2, 3])) == [1, 3, 6]
print("PASS 18_itertools")
