# Objective: Matplotlib 2×2 multi-panel figure (line, hist, scatter, box).
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# Leave the figure open for Agg → Plot panel capture.

import random
import statistics

random.seed(21)
xs = list(range(40))
ys = [random.gauss(0, 1) for _ in xs]
print(
    "n=",
    len(ys),
    "mean=",
    round(statistics.mean(ys), 4),
    "stdev=",
    round(statistics.stdev(ys), 4),
)

#. --- GRAPHIC OUTPUT ---

import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt

fig, axes = plt.subplots(2, 2, figsize=(7, 5.5))
axes[0, 0].plot(xs, ys, color="steelblue")
axes[0, 0].set_title("line")
axes[0, 1].hist(ys, bins=12, color="salmon", edgecolor="white")
axes[0, 1].set_title("hist")
axes[1, 0].scatter(xs, ys, s=18, c="darkgreen", alpha=0.7)
axes[1, 0].set_title("scatter")
axes[1, 1].boxplot(ys, vert=True)
axes[1, 1].set_title("box")
fig.suptitle("sample 21 — multi-panel")
fig.tight_layout()
print("PASS 21_subplots")
