# Objective: Parametric struct Box{T} with typed payload.
# Blank lines = sniper chunks. No blanks inside struct bodies.

struct Box{T}
    value::T
end

b = Box{Int}(42)
@assert b.value == 42

b2 = Box("hi")
@assert b2.value == "hi"

println("PASS 22_parametric_types")
