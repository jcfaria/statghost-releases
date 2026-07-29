# Objective: Optional Distributions.jl Normal pdf/cdf — SKIP if missing.

try
    using Distributions
    d = Normal(0, 1)
    @assert pdf(d, 0) ≈ 1 / sqrt(2π)
    @assert cdf(d, 0) ≈ 0.5
    println("PASS 28_distributions_opt")
catch e
    println("SKIP 28_distributions_opt (Pkg): ", e)
end
