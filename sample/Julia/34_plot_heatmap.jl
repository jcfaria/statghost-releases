# Objective: Optional Plots.jl heatmap of a small correlation-like matrix.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# No display(): STATghost captures PNG via savefig.

M = [1.0 0.8 0.2;
     0.8 1.0 -0.1;
     0.2 -0.1 1.0]
println("M=", M)
println("diag_sum=", M[1, 1] + M[2, 2] + M[3, 3])

#. --- GRAPHIC OUTPUT ---

try
    ENV["GKSwstype"] = "100"
    using Plots
    heatmap(M;
            aspect_ratio = 1,
            title = "sample 34 — corr-like",
            c = :turbo,
            clims = (-1, 1),
            colorbar_title = "r",
            show = false)
    println("PASS 34_plot_heatmap")
catch e
    println("SKIP 34_plot_heatmap (Pkg): ", e)
end
