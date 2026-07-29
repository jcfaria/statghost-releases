# Objective: Dot-broadcast over arrays (Julia-native vectorization).
# Blank lines = sniper chunks.

# Step A — range and element-wise power
x = 1:5
sq = x .^ 2
@assert sq == [1, 4, 9, 16, 25]

# Step B — fuse an add after the broadcast
y = sq .+ 1
@assert y == [2, 5, 10, 17, 26]

# Step C — matrix broadcast
A = [1.0 2.0; 3.0 4.0]
s = sum(sin.(A))
@assert s > 0
println("PASS 08_broadcasting")
