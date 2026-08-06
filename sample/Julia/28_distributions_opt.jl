# Objective: Optional Distributions.jl Normal pdf/cdf — SKIP if missing.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).

try
    using Distributions
    d = Normal(0, 1)
    @assert pdf(d, 0) ≈ 1 / sqrt(2π)
    @assert cdf(d, 0) ≈ 0.5
    println("PASS 28_distributions_opt")
catch e
    println("SKIP 28_distributions_opt (Pkg): ", e)
end
