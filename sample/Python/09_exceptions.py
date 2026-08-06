# Objective: Intentional error — Console should show traceback (TF/ST gate).
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).

print("about to raise…")
raise RuntimeError("FAIL 09_exceptions (intentional)")
