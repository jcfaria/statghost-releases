# Objective: Strings — f-strings, slicing, and length checks.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).

name = "STATghost"
msg = f"{name} · sniper"
assert msg.startswith("STATghost")
assert msg[-6:] == "sniper"
assert len(name) == 9
print(msg)
print("PASS 03_strings")
