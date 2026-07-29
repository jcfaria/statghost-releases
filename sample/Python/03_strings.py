# Objective: Strings — f-strings, slicing, and length checks.

name = "STATghost"
msg = f"{name} · sniper"
assert msg.startswith("STATghost")
assert msg[-6:] == "sniper"
assert len(name) == 9
print(msg)
print("PASS 03_strings")
