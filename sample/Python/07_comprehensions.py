# Objective: Comprehensions — list filter and dict square map.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).

nums = list(range(1, 11))
evens = [n for n in nums if n % 2 == 0]
squares = {n: n * n for n in range(1, 6)}
assert evens == [2, 4, 6, 8, 10]
assert squares[3] == 9
print(evens)
print(squares)
print("PASS 07_comprehensions")
