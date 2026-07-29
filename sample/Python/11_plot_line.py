# Objective: Matplotlib line plot of sqrt(x) for Agg → Plot panel capture.
# Leave the figure open. Do not use __file__ (undefined in sniper REPL).

import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt

xs = list(range(0, 50))
ys = [x ** 0.5 for x in xs]
fig, ax = plt.subplots()
_ = ax.plot(xs, ys, color="steelblue", linewidth=2)
_ = ax.set_title("sqrt(x)")
_ = ax.set_xlabel("x")
_ = ax.set_ylabel("y")
fig.tight_layout()
print("PASS 11_plot_line")
