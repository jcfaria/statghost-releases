# Objective: Boxplot of three seeded groups (compare spreads).
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# Leave the figure open for Agg → Plot panel capture.

import random
import statistics

random.seed(33)
g1 = [random.gauss(0, 1) for _ in range(40)]
g2 = [random.gauss(0.8, 1.2) for _ in range(40)]
g3 = [random.gauss(-0.4, 0.7) for _ in range(35)]
print(
    "means=",
    round(statistics.mean(g1), 3),
    round(statistics.mean(g2), 3),
    round(statistics.mean(g3), 3),
)
print(
    "stdevs=",
    round(statistics.stdev(g1), 3),
    round(statistics.stdev(g2), 3),
    round(statistics.stdev(g3), 3),
)

#. --- GRAPHIC OUTPUT ---

import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt

fig, ax = plt.subplots()
ax.boxplot(
    [g1, g2, g3],
    labels=["g1", "g2", "g3"],
    patch_artist=True,
)
ax.set_title("sample 33 — boxplot")
ax.set_ylabel("value")
fig.tight_layout()
print("PASS 33_boxplot")
