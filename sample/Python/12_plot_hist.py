# Objective: Matplotlib histogram of a seeded N(0,1) sample.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# Leave the figure open for Agg → Plot panel capture.

import random
import statistics

random.seed(17)
xs = [random.gauss(0, 1) for _ in range(500)]
print(
    "n=",
    len(xs),
    "mean=",
    round(statistics.mean(xs), 4),
    "stdev=",
    round(statistics.stdev(xs), 4),
)
assert len(xs) == 500

#. --- GRAPHIC OUTPUT ---

import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt

fig, ax = plt.subplots()
_ = ax.hist(xs, bins=25, color="seagreen", edgecolor="white")
_ = ax.set_title("sample 12 — N(0,1) hist")
fig.tight_layout()
print("PASS 12_plot_hist")
