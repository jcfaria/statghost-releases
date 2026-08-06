# Objective: Optional Plots.jl line — SKIP cleanly if package missing.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# No display(): STATghost captures PNG via savefig; avoid GKS QtTerm.

x = range(0, 2π; length = 100)
ys = sin.(x)
println("n=", length(x), " y_extrema=", extrema(ys))

#. --- GRAPHIC OUTPUT ---

try
    ENV["GKSwstype"] = "100"
    using Plots
    plot(x, ys;
         title = "sample 17 — sin",
         legend = false,
         lw = 3.5,
         color = :dodgerblue,
         show = false)
    println("PASS 17_plot_line")
catch e
    println("SKIP 17_plot_line (Pkg): ", e)
end
