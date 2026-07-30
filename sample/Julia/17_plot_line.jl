# Objective: Optional Plots.jl line — SKIP cleanly if package missing.
# No display(): STATghost captures PNG via savefig; avoid GKS QtTerm.

try
    ENV["GKSwstype"] = "100"
    using Plots
    x = range(0, 2π; length = 100)
    plot(x, sin.(x);
         title = "sin",
         legend = false,
         lw = 3.5,
         color = :dodgerblue,
         show = false)
    println("PASS 17_plot_line")
catch e
    println("SKIP 17_plot_line (Pkg): ", e)
end
