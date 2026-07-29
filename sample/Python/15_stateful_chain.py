# Objective: Stateful chain — later steps reuse names from earlier chunks.
# Blank lines separate sniper chunks; paste whole file or step-by-step.

# Step A
total = 0
for i in range(1, 6):
    total += i

assert total == 15

# Step B — uses total from above (same process)
total *= 2
assert total == 30

# Step C
label = f"total={total}"
assert label == "total=30"
print(label)
print("PASS 15_stateful_chain")
