# Objective: Optional Plots.jl bar chart of small categorical counts.
# No display(): STATghost captures PNG via savefig.

cats = ["A", "B", "C", "D"]
vals = [4, 7, 2, 5]
println("counts=", Dict(cats .=> vals))
println("total=", sum(vals))

# --- GRAPHIC OUTPUT ---

try
    ENV["GKSwstype"] = "100"
    using Plots
    bar(cats, vals;
        legend = false,
        title = "sample 32 — counts",
        color = :mediumseagreen,
        linecolor = :darkgreen,
        linewidth = 1.5,
        fillalpha = 0.95,
        show = false)
    println("PASS 32_plot_bar")
catch e
    println("SKIP 32_plot_bar (Pkg): ", e)
end
