# Objective: Named functions and short-form defs that survive later chunks.
# Blank lines = sniper chunks. No blanks inside function bodies.

function addsq(x, y)
    return x^2 + y^2
end

f(x) = 2x + 1

@assert addsq(3, 4) == 25
@assert f(10) == 21
println("PASS 07_functions")
