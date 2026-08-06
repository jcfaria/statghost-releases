# Objective: Optional Plots.jl scatter with a trend line.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# No display(): STATghost captures PNG via savefig; avoid GKS QtTerm.

using Random
using Statistics

Random.seed!(1)
x = randn(80)
y = 0.5 .* x .+ 0.1 .* randn(80)
println("n=", length(x), " corr≈", round(cor(x, y); digits = 4))

#. --- GRAPHIC OUTPUT ---

try
    ENV["GKSwstype"] = "100"
    using Plots
    plt = scatter(x, y;
                  legend = false,
                  title = "sample 19 — scatter",
                  ms = 8,
                  color = :darkorange,
                  markerstrokewidth = 1,
                  markerstrokecolor = :black,
                  show = false)
    plot!(plt, x -> 0.5x, extrema(x)...;
          lw = 3.5,
          color = :navy)
    println("PASS 19_plot_scatter")
catch e
    println("SKIP 19_plot_scatter (Pkg): ", e)
end
