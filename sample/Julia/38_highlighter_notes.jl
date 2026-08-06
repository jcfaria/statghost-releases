# Objective: Show Console / CudaText Julia highlighter Notes (#. #.. #...) vs # Comment.
# Open in CudaText (lexer Julia) or STATghost Console; Arm → Ctrl+C by chunks.

# Ordinary line comment — style Comment (gray italic).

#. Note_1                                   # Note_1

#.. Note_2                                  # Note_2

#... Note_3                                 # Note_3

# Notes never execute — colour only         # Comment

# Step A: tiny visible expression after each note family.
xs = 1:5
println(sum(xs) / length(xs))

#. Tip: progressive Arm chunks are blank-line separated.

println(sum(xs))

#.. Tip: Notes are still comments to the engine — they never execute.

println(maximum(xs) - minimum(xs))

#... Tip: use Notes in teaching scripts so students see hierarchy at a glance.

println("PASS 38_highlighter_notes")
