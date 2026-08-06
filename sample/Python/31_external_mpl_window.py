# Objective: Force an *external* matplotlib window (TkAgg).
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
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

# text prelude — backend name before any draw
_be = matplotlib.get_backend().lower()
print("matplotlib_backend=", matplotlib.get_backend())

xs = list(range(0, 40))
ys = [((x - 20) ** 2) / 100.0 for x in xs]
print("n=", len(xs), "y_min=", min(ys), "y_max=", max(ys))

#. --- GRAPHIC OUTPUT ---

# backend guard (Agg → SKIP; Tk/Qt → external window)
if "agg" in _be and "tk" not in _be and "qt" not in _be:
    print("SKIP 31_external_mpl_window (enable Settings → Show matplotlib window, then Arm)")
else:
    import matplotlib.pyplot as plt
    # parabola demo for the external window
    fig, ax = plt.subplots()
    ax.plot(
        xs,
        ys,
        color="darkorange",
        linewidth=2,
    )
    ax.set_title("sample 31 — external matplotlib")
    ax.set_xlabel("x")
    ax.set_ylabel("y")
    fig.tight_layout()
    plt.show(block=False)
    print("PASS 31_external_mpl_window — external Tk/Qt window should be open")
