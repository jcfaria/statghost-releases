# Objective: collections — Counter, bounded deque, and defaultdict grouping.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).

from collections import Counter, defaultdict, deque

words = "to be or not to be that is the question".split()
c = Counter(words)
print(c.most_common(3))

dq = deque(maxlen=3)
for x in range(6):
    dq.append(x)
assert list(dq) == [3, 4, 5]

dd = defaultdict(list)
for w in words:
    dd[w[0]].append(w)
print(sorted(dd.keys()))
print("PASS 27_collections")
