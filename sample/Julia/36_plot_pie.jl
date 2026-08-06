# Objective: Optional Plots.jl pie chart of small categorical shares.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# No display(): STATghost captures PNG via savefig; SKIP if Plots missing.

cats = ["A", "B", "C", "D"]
vals = [12.0, 7.0, 18.0, 5.0]
props = vals ./ sum(vals)
println("props=", Dict(cats .=> round.(props; digits = 3)))

#. --- GRAPHIC OUTPUT ---

try
    ENV["GKSwstype"] = "100"
    using Plots
    pie(cats, vals;
        title = "sample 36 — pie",
        legend = :outertopright,
        show = false)
    println("PASS 36_plot_pie")
catch e
    println("SKIP 36_plot_pie (Pkg): ", e)
end
