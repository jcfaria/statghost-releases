# Objective: Parametric struct Box{T} with typed payload.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# Blank lines = sniper chunks. No blanks inside struct bodies.

struct Box{T}
    value::T
end

b = Box{Int}(42)
@assert b.value == 42

b2 = Box("hi")
@assert b2.value == "hi"

println("PASS 22_parametric_types")
