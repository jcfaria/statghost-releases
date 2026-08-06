# Objective: Matplotlib line plot of sqrt(x) for Agg → Plot panel capture.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# Leave the figure open. Do not use __file__ (undefined in sniper REPL).

xs = list(range(0, 50))
ys = [x ** 0.5 for x in xs]
print("n=", len(xs), "y_last=", round(ys[-1], 4))

#. --- GRAPHIC OUTPUT ---

import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt

fig, ax = plt.subplots()
_ = ax.plot(xs, ys, color="steelblue", linewidth=2)
_ = ax.set_title("sample 11 — sqrt(x)")
_ = ax.set_xlabel("x")
_ = ax.set_ylabel("y")
fig.tight_layout()
print("PASS 11_plot_line")
