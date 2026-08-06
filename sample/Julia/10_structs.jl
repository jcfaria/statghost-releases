# Objective: Immutable struct with a small method.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# Blank lines = sniper chunks. No blanks inside struct/method bodies.

struct Point
    x::Float64
    y::Float64
end

dist(p::Point) = hypot(p.x, p.y)

p = Point(3.0, 4.0)
@assert dist(p) == 5.0

println("PASS 10_structs dist=$(dist(p))")
