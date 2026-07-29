# Objective: Write/read a tiny CSV with DelimitedFiles (stdlib).
# Blank lines = sniper chunks.

using DelimitedFiles
using Statistics

# Step A — write a small table
path = joinpath(tempdir(), "statghost_julia_20.csv")
open(path, "w") do io
    writedlm(io, ["x" "y"; 1 2; 3 4; 5 6], ',')
end

# Step B — read back (header + matrix)
data = readdlm(path, ','; header = true)
mat = data[1]
@assert size(mat, 1) == 3

# Step C — column mean and cleanup
μx = mean(mat[:, 1])
@assert μx == 3.0
rm(path; force = true)
println("PASS 20_csv_io μx=$μx")
