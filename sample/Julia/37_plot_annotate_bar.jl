# Objective: Optional Plots.jl annotated bar chart (classroom counts).
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# No StatsPlots violin — base Plots only. SKIP if Plots missing.

cats = ["A", "B", "C", "D"]
vals = [4, 9, 6, 11]
println("counts=", Dict(cats .=> vals), " max=", maximum(vals))

#. --- GRAPHIC OUTPUT ---

try
    ENV["GKSwstype"] = "100"
    using Plots
    plt = bar(cats, vals;
              legend = false,
              title = "sample 37 — annotated bar",
              color = :mediumpurple,
              linecolor = :indigo,
              linewidth = 1.5,
              fillalpha = 0.92,
              ylim = (0, maximum(vals) + 3),
              show = false)
    for (i, v) in enumerate(vals)
        annotate!(plt, i, v + 0.6, text(string(v), 10, :black))
    end
    println("PASS 37_plot_annotate_bar")
catch e
    println("SKIP 37_plot_annotate_bar (Pkg): ", e)
end
