# Objective: Intentional error path for TF (catch ErrorException).
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
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
