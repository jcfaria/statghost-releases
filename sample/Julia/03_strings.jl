# Objective: String interpolation, slicing, and join.
# Blank lines = sniper chunks.

name = "STATghost"
msg = "sniper: $name"
@assert startswith(msg, "sniper")
@assert msg[1:6] == "sniper"

parts = ["R", "Python", "Julia"]
@assert join(parts, "|") == "R|Python|Julia"

println("PASS 03_strings $msg")
