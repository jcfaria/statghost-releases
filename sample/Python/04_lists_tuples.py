# Objective: Sequences — list mutation and tuple indexing.

xs = [1, 2, 3, 4]
ys = (10, 20)
xs.append(5)
assert xs == [1, 2, 3, 4, 5]
assert sum(xs) == 15
assert ys[0] == 10
print(xs, ys)
print("PASS 04_lists_tuples")
