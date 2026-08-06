# Objective: Stateful mini-model — fit a line, then predict; optional plot.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# Progressive REPL: coefficients remain for the next clipboard chunk.
# Blank lines = sniper chunks. No blanks inside function bodies.

using Random

Random.seed!(11)

function fit_line(xs, ys)
    n = length(xs)
    mx = sum(xs) / n
    my = sum(ys) / n
    num = sum((x - mx) * (y - my) for (x, y) in zip(xs, ys))
    den = sum((x - mx)^2 for x in xs)
    slope = num / den
    intercept = my - slope * mx
    return (intercept, slope)
end

function predict(beta, xs)
    a, b = beta
    return [a + b * x for x in xs]
end

# Step A — synthetic data
xs = [i / 10 for i in 0:49]
ys = [2.5 + 1.7 * x + 0.4 * randn() for x in xs]

# Step B — fit (β survives for later chunks)
beta = fit_line(xs, ys)
println("beta=", round.(collect(beta); digits = 4))

# Step C — predict + SSE
yhat = predict(beta, xs)
sse = sum(abs2, ys .- yhat)
println("sse=", round(sse; digits = 4))
@assert sse < 20
println("PASS 30_stateful_fit_predict")

#. --- GRAPHIC OUTPUT ---

# Optional Plots.jl overlay (Plot panel / headless)
try
    ENV["GKSwstype"] = "100"
    using Plots
    scatter(xs, ys;
            ms = 8,
            color = :darkorange,
            markerstrokewidth = 1,
            markerstrokecolor = :black,
            alpha = 0.85,
            label = "data",
            title = "sample 30 — fit / predict",
            show = false)
    plot!(xs, yhat;
          lw = 3.5,
          color = :navy,
          label = "fit",
          show = false)
    println("PASS 30_plot")
catch e
    println("SKIP 30_plot (Pkg): ", e)
end
