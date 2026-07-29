# Objective: Optional tiny ODE via DifferentialEquations — SKIP if missing.

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
