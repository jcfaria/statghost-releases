# Objective: Hexbin density of a bivariate Gaussian cloud.
# Leave the figure open for Agg → Plot panel capture.

import random
import math

random.seed(34)
n = 400
xs = [random.gauss(0, 1) for _ in range(n)]
ys = [0.6 * x + 0.8 * random.gauss(0, 1) for x in xs]
mx = sum(xs) / n
my = sum(ys) / n
num = sum((x - mx) * (y - my) for x, y in zip(xs, ys))
den = math.sqrt(
    sum((x - mx) ** 2 for x in xs) * sum((y - my) ** 2 for y in ys)
)
print("n=", n, "corr~=", round(num / den, 4))

# --- GRAPHIC OUTPUT ---

import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt

fig, ax = plt.subplots()
hb = ax.hexbin(xs, ys, gridsize=18, cmap="YlOrRd", mincnt=1)
fig.colorbar(hb, ax=ax, label="count")
ax.set_title("sample 34 — hexbin")
ax.set_xlabel("x")
ax.set_ylabel("y")
fig.tight_layout()
print("PASS 34_hexbin")
