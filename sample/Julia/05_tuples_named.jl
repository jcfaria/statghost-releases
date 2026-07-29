# Objective: Tuples and NamedTuples for small records.
# Blank lines = sniper chunks.

t = (10, 20, 30)
@assert t[2] == 20

nt = (x = 1.5, y = 2.5, label = "pt")
@assert nt.x + nt.y == 4.0
@assert nt.label == "pt"

println("PASS 05_tuples_named $(nt.label)")
