# Objective: Optional Plots.jl bar chart of small categorical counts.
# No display(): STATghost captures PNG via savefig.

try
    ENV["GKSwstype"] = "100"
    using Plots
    cats = ["A", "B", "C", "D"]
    vals = [4, 7, 2, 5]
    bar(cats, vals;
        legend = false,
        title = "counts",
        color = :mediumseagreen,
        linecolor = :darkgreen,
        linewidth = 1.5,
        fillalpha = 0.95,
        show = false)
    println("PASS 32_plot_bar")
catch e
    println("SKIP 32_plot_bar (Pkg): ", e)
end
