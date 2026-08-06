# Objective: Minimal text smoke — arithmetic and a short rnorm draw.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# Good first Arm / Ctrl+C check. Blank lines = sniper chunks.

1 + 1

rnorm(n = 1e2,
      mean = 10,
      sd = 2)
message("PASS 01_hello")
