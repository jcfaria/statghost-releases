# Objective: Show Console / CudaText R highlighter identifiers (Notes + Comment).
# Open in CudaText (lexer R) or STATghost Console; Arm → Ctrl+C by chunks.

# Ordinary line comment — style Comment (gray italic).

#. Note_1                                   # Note_1

#.. Note_2                                  # Note_2

#... Note_3                                 # Note_3

# Notes never execute — colour only         # Comment

# Step A: tiny visible expression after each note family.
x <- 1:5
mean(x)

#. Tip: progressive Arm chunks are blank-line separated.

sum(x)

#.. Tip: Notes are still comments to the engine — they never execute.

sd(x)

#... Tip: use Notes in teaching scripts so students see hierarchy at a glance.

message("PASS 36_highlighter_notes")
