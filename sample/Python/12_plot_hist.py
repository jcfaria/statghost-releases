# Objective: Matplotlib histogram of a seeded N(0,1) sample.
# Leave the figure open for Agg → Plot panel capture.

import random
import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt

random.seed(17)
xs = [random.gauss(0, 1) for _ in range(500)]
fig, ax = plt.subplots()
_ = ax.hist(xs, bins=25, color="seagreen", edgecolor="white")
_ = ax.set_title("N(0,1) sample")
fig.tight_layout()
assert len(xs) == 500
print("PASS 12_plot_hist")
