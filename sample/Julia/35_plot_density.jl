# Objective: Optional Plots.jl kernel-style density via histogram + PDF overlay.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# No display(): STATghost captures PNG via savefig; SKIP if Plots missing.

using Random
using Statistics

Random.seed!(35)
z = randn(200)
println("n=", length(z), " mean=", round(mean(z); digits = 4),
        " std=", round(std(z); digits = 4))

#. --- GRAPHIC OUTPUT ---

try
    ENV["GKSwstype"] = "100"
    using Plots
    histogram(z;
              bins = 20,
              normalize = :pdf,
              legend = false,
              title = "sample 35 — density-like hist",
              color = :royalblue,
              fillalpha = 0.75,
              linecolor = :navy,
              linewidth = 1.2,
              show = false)
    xs = range(minimum(z) - 0.5, maximum(z) + 0.5; length = 120)
    plot!(xs, (1 / sqrt(2π)) .* exp.(-0.5 .* xs .^ 2);
          lw = 3,
          color = :crimson,
          label = "")
    println("PASS 35_plot_density")
catch e
    println("SKIP 35_plot_density (Pkg): ", e)
end
