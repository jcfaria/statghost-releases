# Objective: Threads.nthreads visibility + threaded fill (compute ↑).
# Blank lines = sniper chunks. No blanks inside the @threads loop body.

using Base.Threads

n = 50_000
out = zeros(Int, n)

@threads for i in 1:n
    out[i] = i * i
end

@assert out[10] == 100
@assert out[n] == n * n
println("PASS 24_threads_map threads=$(nthreads())")
