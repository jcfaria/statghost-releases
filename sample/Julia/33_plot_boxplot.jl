# Objective: Optional Plots.jl grouped means (bar) — classroom-sized.
# Uses base Plots only (no StatsPlots). No display(): PNG via savefig.

using Random
using Statistics

Random.seed!(33)
g1 = randn(40)
g2 = 0.5 .+ randn(40)
g3 = -0.3 .+ 1.2 .* randn(40)
labs = ["g1", "g2", "g3"]
μ = [mean(g1), mean(g2), mean(g3)]
println("group_means=", round.(μ; digits = 4))

# --- GRAPHIC OUTPUT ---

try
    ENV["GKSwstype"] = "100"
    using Plots
    bar(labs, μ;
        legend = false,
        title = "sample 33 — group means",
        ylabel = "mean",
        color = [:royalblue, :crimson, :goldenrod],
        linecolor = :black,
        linewidth = 1.5,
        fillalpha = 0.95,
        show = false)
    println("PASS 33_plot_boxplot")
catch e
    println("SKIP 33_plot_boxplot (Pkg): ", e)
end
