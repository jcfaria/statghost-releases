# Objective: Force an *external* matplotlib window (TkAgg).
# Cannot embed interactive GUI in the Plot panel (Agg PNG only by default).
#
# Prerequisites:
#   1) Settings → Session → Python → Options → enable "Show matplotlib window"
#   2) Arm (restart) so the session starts with TkAgg
#   3) Uncheck "Close figures after Plot panel capture" if you want the window
#      to stay after capture (optional)
#
# With Agg (default), this script prints SKIP (TF-safe). Blank lines = sniper chunks.

import matplotlib

# backend guard (Agg → SKIP; Tk/Qt → external window)
_be = matplotlib.get_backend().lower()
if "agg" in _be and "tk" not in _be and "qt" not in _be:
    print("SKIP 31_external_mpl_window (enable Settings → Show matplotlib window, then Arm)")
else:
    import matplotlib.pyplot as plt
    # parabola demo for the external window
    xs = list(range(0, 40))
    ys = [((x - 20) ** 2) / 100.0 for x in xs]
    fig, ax = plt.subplots()
    ax.plot(
        xs,
        ys,
        color="darkorange",
        linewidth=2,
    )
    ax.set_title("STATghost — external matplotlib")
    ax.set_xlabel("x")
    ax.set_ylabel("y")
    fig.tight_layout()
    plt.show(block=False)
    print("PASS 31_external_mpl_window — external Tk/Qt window should be open")
