# Objective: Show Console / CudaText Python highlighter Notes (#. #.. #...) vs # Comment.
# Open in CudaText (lexer Python) or STATghost Console; Arm → Ctrl+C by chunks.

# Ordinary line comment — style Comment (gray italic).

#. Note_1                                   # Note_1

#.. Note_2                                  # Note_2

#... Note_3                                 # Note_3

# Notes never execute — colour only         # Comment

# Step A: tiny visible expression after each note family.
xs = list(range(1, 6))
print(sum(xs) / len(xs))

#. Tip: progressive Arm chunks are blank-line separated.

print(sum(xs))

#.. Tip: Notes are still comments to the engine — they never execute.

print(max(xs) - min(xs))

#... Tip: use Notes in teaching scripts so students see hierarchy at a glance.

print("PASS 35_highlighter_notes")
