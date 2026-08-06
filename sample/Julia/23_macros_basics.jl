# Objective: Tiny generated macro + @assert / @show (classroom macro peek).
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# Blank lines = sniper chunks. No blanks inside macro bodies.

# Step A — macro that evaluates an expression twice
macro twice(ex)
    quote
        $(esc(ex))
        $(esc(ex))
    end
end

# Step B — use it on a counter
n = 0
@twice n += 1
@assert n == 2

# Step C — @show for REPL-style inspection
@show n

println("PASS 23_macros_basics")
