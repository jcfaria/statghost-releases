# Objective: Deeper Statistics stdlib — std, quantile, cor (+ optional hist).
# Blank lines = sniper chunks.

using Statistics

x = [1.0, 2.0, 3.0, 4.0, 5.0]
y = [2.0, 4.0, 6.0, 8.0, 10.0]

@assert std(x) > 0
@assert quantile(x, 0.5) == 3.0
@assert cor(x, y) ≈ 1.0
println("PASS 14_statistics_base")

# optional visual of x
try
    ENV["GKSwstype"] = "100"
    using Plots
    histogram(x;
              bins = 5,
              legend = false,
              title = "x",
              color = :royalblue,
              fillalpha = 0.9,
              linecolor = :navy,
              linewidth = 1.5,
              show = false)
    println("PASS 14_plot")
catch e
    println("SKIP 14_plot (Pkg): ", e)
end
