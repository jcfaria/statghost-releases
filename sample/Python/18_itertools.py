# Objective: Itertools recipes — accumulate, pairwise, and islice.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# pairwise requires Python >= 3.10.

from itertools import accumulate, islice, pairwise

xs = list(range(1, 11))
print(list(accumulate(xs)))
print(list(pairwise(xs))[:4])
print(list(islice(xs, 2, 8, 2)))
assert list(accumulate([1, 2, 3])) == [1, 3, 6]
print("PASS 18_itertools")
