# Objective: Optional Plots.jl histogram of seeded normals.
# No display(): STATghost captures PNG via savefig; avoid GKS QtTerm.

try
    ENV["GKSwstype"] = "100"
    using Plots
    using Random
    Random.seed!(7)
    histogram(randn(500);
              bins = 25,
              legend = false,
              title = "N(0,1)",
              show = false)
    println("PASS 18_plot_hist")
catch e
    println("SKIP 18_plot_hist (Pkg): ", e)
end
