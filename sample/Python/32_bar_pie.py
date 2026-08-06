# Objective: Bar chart and pie chart of small categorical counts.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# Leave the figure open for Agg → Plot panel capture.

cats = ["A", "B", "C", "D"]
vals = [12, 7, 18, 5]
total = sum(vals)
props = [v / total for v in vals]
print("counts=", dict(zip(cats, vals)))
print("props=", {c: round(p, 3) for c, p in zip(cats, props)})

#. --- GRAPHIC OUTPUT ---

import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt

fig, axes = plt.subplots(1, 2, figsize=(8, 3.8))
axes[0].bar(cats, vals, color=["steelblue", "seagreen", "tomato", "goldenrod"])
axes[0].set_title("bar counts")
axes[0].set_ylabel("count")
axes[1].pie(
    vals,
    labels=cats,
    colors=["steelblue", "seagreen", "tomato", "goldenrod"],
    autopct="%1.0f%%",
)
axes[1].set_title("pie")
fig.suptitle("sample 32 — bar + pie")
fig.tight_layout()
print("PASS 32_bar_pie")
