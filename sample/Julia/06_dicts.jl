# Objective: Dict get!, haskey, and iteration order independence.
# Blank lines = sniper chunks.

d = Dict("a" => 1, "b" => 2)
@assert d["a"] == 1

@assert get!(d, "c", 3) == 3
@assert haskey(d, "c")
@assert sum(values(d)) == 6

println("PASS 06_dicts n=$(length(d))")
