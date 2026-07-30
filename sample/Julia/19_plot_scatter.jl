# Objective: Optional Plots.jl scatter with a trend line.
# No display(): STATghost captures PNG via savefig; avoid GKS QtTerm.

try
    ENV["GKSwstype"] = "100"
    using Plots
    using Random
    Random.seed!(1)
    x = randn(80)
    y = 0.5 .* x .+ 0.1 .* randn(80)
    plt = scatter(x, y;
                  legend = false,
                  title = "scatter",
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
