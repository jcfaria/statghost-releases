# Objective: Stateful chain — later steps reuse names from earlier chunks.
# Blank lines = sniper chunks; paste whole file or step-by-step.

using Statistics

# Step A — data and moments
data = [1.0, 2.0, 3.0, 4.0, 5.0]
μ = mean(data)
σ = std(data; corrected = true)
@assert μ == 3.0

# Step B — uses μ, σ from above (same process)
z = (data .- μ) ./ σ
@assert abs(mean(z)) < 1e-12

# Step C — z-scores have unit sample sd
@assert abs(std(z; corrected = true) - 1) < 1e-12
println("PASS 26_stateful_chain mean_z=$(mean(z))")
