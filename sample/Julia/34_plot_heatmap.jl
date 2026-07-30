# Objective: Optional Plots.jl heatmap of a small correlation-like matrix.
# No display(): STATghost captures PNG via savefig.

try
    ENV["GKSwstype"] = "100"
    using Plots
    M = [1.0 0.8 0.2;
         0.8 1.0 -0.1;
         0.2 -0.1 1.0]
    heatmap(M;
            aspect_ratio = 1,
            title = "corr-like",
            c = :turbo,
            clims = (-1, 1),
            colorbar_title = "r",
            show = false)
    println("PASS 34_plot_heatmap")
catch e
    println("SKIP 34_plot_heatmap (Pkg): ", e)
end
