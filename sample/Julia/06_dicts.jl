# Objective: Dict get!, haskey, and iteration order independence.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# Blank lines = sniper chunks.

d = Dict("a" => 1, "b" => 2)
@assert d["a"] == 1

@assert get!(d, "c", 3) == 3
@assert haskey(d, "c")
@assert sum(values(d)) == 6

println("PASS 06_dicts n=$(length(d))")
