# Objective: Matplotlib scatter of a noisy linear cloud.
# Leave the figure open for Agg → Plot panel capture.

import random
import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt

random.seed(17)
xs = [random.random() for _ in range(80)]
ys = [0.5 * x + 0.1 * random.random() for x in xs]
fig, ax = plt.subplots()
_ = ax.scatter(xs, ys, c="darkorange", alpha=0.8)
_ = ax.set_title("noisy linear cloud")
fig.tight_layout()
assert len(xs) == len(ys) == 80
print("PASS 13_plot_scatter")
