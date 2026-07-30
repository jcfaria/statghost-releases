# Objective: Multiple dispatch — same name, different methods.
# Blank lines = sniper chunks.

area(r::Real) = π * r^2
area(w::Real, h::Real) = w * h

@assert area(1) ≈ π
@assert area(2, 3) == 6

println("PASS 11_multiple_dispatch")
