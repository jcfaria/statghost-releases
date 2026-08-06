# Objective: Multiple dispatch — same name, different methods.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# Blank lines = sniper chunks.

area(r::Real) = π * r^2
area(w::Real, h::Real) = w * h

@assert area(1) ≈ π
@assert area(2, 3) == 6

println("PASS 11_multiple_dispatch")
