# Objective: Intentional error path for TF (catch ErrorException).
# No blank lines inside the try/catch body.

caught = try
    error("intentional Julia TF error")
    false
catch e
    println("caught: ", e)
    e isa ErrorException
end
@assert caught

println("PASS 12_exceptions")
