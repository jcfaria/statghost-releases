# Objective: Stacked area chart with an annotation arrow.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# Leave the figure open for Agg → Plot panel capture.

# three series over years
years = list(range(2018, 2026))
a = [10, 12, 13, 15, 16, 18, 19, 21]
b = [8, 9, 11, 12, 14, 14, 15, 16]
c = [5, 6, 6, 7, 8, 9, 10, 11]
totals = [ai + bi + ci for ai, bi, ci in zip(a, b, c)]
print("years=", years[0], "..", years[-1], "final_total=", totals[-1])

#. --- GRAPHIC OUTPUT ---

import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt

fig, ax = plt.subplots()
ax.stackplot(
    years,
    a,
    b,
    c,
    labels=["A", "B", "C"],
    alpha=0.85,
)
ax.legend(loc="upper left")
ax.set_title("sample 29 — stacked area")
ax.set_xlabel("year")
ax.set_ylabel("value")
# annotate the stacked peak
ax.annotate(
    "peak mix",
    xy=(2025, totals[-1]),
    xytext=(2021, 45),
    arrowprops=dict(
        arrowstyle="->",
        color="gray",
    ),
)
fig.tight_layout()
print("PASS 29_stacked_area")
