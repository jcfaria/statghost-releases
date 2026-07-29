# Objective: Compound try/for — clipboard flush / CONT marker stress.
# Keep as a real multi-line block (blank only between top-level chunks).

total = 0
for i in range(5):
    try:
        if i == 3:
            raise ValueError("boom at 3")
        total += i * i
    except ValueError as e:
        print("caught:", e)
        total += -1

assert total == 0 + 1 + 4 + (-1) + 16
print("total=", total)
print("PASS 26_compound_try_for")
