# Objective: Dictionaries — update, membership, and key ordering.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).

d = {"n": 10, "mean": 0.0, "sd": 1.0}
d["mean"] = 2.5
assert d["n"] == 10
assert "sd" in d
assert sorted(d.keys()) == ["mean", "n", "sd"]
print(d)
print("PASS 05_dicts")
