# Objective: Optional Plots.jl histogram of seeded normals.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# No display(): STATghost captures PNG via savefig; avoid GKS QtTerm.

using Random
using Statistics

Random.seed!(7)
z = randn(80)
println("n=", length(z), " mean=", round(mean(z); digits = 4),
        " std=", round(std(z); digits = 4))

#. --- GRAPHIC OUTPUT ---

try
    ENV["GKSwstype"] = "100"
    using Plots
    histogram(z;
              bins = 15,
              legend = false,
              title = "sample 18 — N(0,1)",
              color = :crimson,
              fillalpha = 0.88,
              linecolor = :darkred,
              linewidth = 1.5,
              show = false)
    println("PASS 18_plot_hist")
catch e
    println("SKIP 18_plot_hist (Pkg): ", e)
end
