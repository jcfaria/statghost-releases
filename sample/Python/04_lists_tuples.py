# Objective: Sequences — list mutation and tuple indexing.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).

xs = [1, 2, 3, 4]
ys = (10, 20)
xs.append(5)
assert xs == [1, 2, 3, 4, 5]
assert sum(xs) == 15
assert ys[0] == 10
print(xs, ys)
print("PASS 04_lists_tuples")
