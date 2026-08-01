# Objective: Stateful mini-model — fit a line, then predict; optional plot.
# Progressive REPL: coefficients remain for the next clipboard chunk.
# No blank lines inside def bodies (progressive REPL closes on blank).

import random

random.seed(30)

def fit_line(xs, ys):
    n = len(xs)
    mx = sum(xs) / n
    my = sum(ys) / n
    num = sum((x - mx) * (y - my) for x, y in zip(xs, ys))
    den = sum((x - mx) ** 2 for x in xs)
    slope = num / den
    intercept = my - slope * mx
    return intercept, slope

def predict(beta, xs):
    a, b = beta
    return [a + b * x for x in xs]

xs = [i / 10 for i in range(50)]
ys = [2.5 + 1.7 * x + random.gauss(0, 0.4) for x in xs]
beta = fit_line(xs, ys)
print("beta=", tuple(round(v, 4) for v in beta))

yhat = predict(beta, xs)
sse = sum((y - yh) ** 2 for y, yh in zip(ys, yhat))
print("sse=", round(sse, 4))
assert sse < 20
print("PASS 30_stateful_fit_predict")

# --- GRAPHIC OUTPUT ---

try:
    import matplotlib
    matplotlib.use("Agg")
    import matplotlib.pyplot as plt
except ImportError:
    print("SKIP 30_plot (no matplotlib)")
else:
    fig, ax = plt.subplots()
    ax.scatter(xs, ys, s=16, alpha=0.7, label="data")
    ax.plot(xs, yhat, color="crimson", linewidth=2, label="fit")
    ax.set_title("sample 30 — fit / predict")
    ax.legend()
    fig.tight_layout()
    print("PASS 30_plot")
