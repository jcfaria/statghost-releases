# Objective: Threads.nthreads visibility + threaded fill (small n).
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# Blank lines = sniper chunks. No blanks inside the @threads loop body.

using Base.Threads

n = 2_000
out = zeros(Int, n)

@threads for i in 1:n
    out[i] = i * i
end

@assert out[10] == 100
@assert out[n] == n * n

println("PASS 24_threads_map threads=$(nthreads())")
