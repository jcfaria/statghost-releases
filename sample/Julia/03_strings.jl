# Objective: String interpolation, slicing, and join.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# Blank lines = sniper chunks.

name = "STATghost"
msg = "sniper: $name"
@assert startswith(msg, "sniper")
@assert msg[1:6] == "sniper"

parts = ["R", "Python", "Julia"]
@assert join(parts, "|") == "R|Python|Julia"

println("PASS 03_strings $msg")
