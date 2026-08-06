# Objective: Optional tiny ODE via DifferentialEquations — SKIP if missing.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).

try
    using DifferentialEquations
    f(u, p, t) = 1.01 * u
    prob = ODEProblem(f, 0.5, (0.0, 1.0))
    sol = solve(prob)
    @assert sol.u[end] > 0.5
    println("PASS 29_ode_opt u_end=$(sol.u[end])")
catch e
    println("SKIP 29_ode_opt (Pkg): ", e)
end
