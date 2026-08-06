# Objective: Matplotlib scatter of a noisy linear cloud.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# Leave the figure open for Agg → Plot panel capture.

import random
import statistics

random.seed(17)
xs = [random.random() for _ in range(80)]
ys = [0.5 * x + 0.1 * random.random() for x in xs]
mx = statistics.mean(xs)
my = statistics.mean(ys)
num = sum((x - mx) * (y - my) for x, y in zip(xs, ys))
den = (
    sum((x - mx) ** 2 for x in xs) * sum((y - my) ** 2 for y in ys)
) ** 0.5
r = num / den
print("n=", len(xs), "corr~=", round(r, 4))
assert len(xs) == len(ys) == 80

#. --- GRAPHIC OUTPUT ---

import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt

fig, ax = plt.subplots()
_ = ax.scatter(xs, ys, c="darkorange", alpha=0.8)
_ = ax.set_title("sample 13 — noisy linear cloud")
fig.tight_layout()
print("PASS 13_plot_scatter")
