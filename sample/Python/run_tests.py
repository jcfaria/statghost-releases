# Run assert-style Python samples (skips intentional error + optional deps).
# Usage (repo root):  python sample/Python/run_tests.py
from __future__ import annotations

import runpy
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
# 09 raises on purpose; plots leave a figure open for sniper PNG capture.
SKIP_ALWAYS = {"09_exceptions.py", "run_tests.py"}
PLOT_FILES = {
    "11_plot_line.py",
    "12_plot_hist.py",
    "13_plot_scatter.py",
    "21_plot_subplots.py",
    "22_plot_twin_axis.py",
    "29_plot_stacked_area.py",
}


def _assert_open_figure(name: str) -> None:
    import matplotlib.pyplot as plt

    if not plt.get_fignums():
        raise AssertionError(
            f"{name}: expected an open figure (sniper captures Agg PNG)"
        )
    plt.close("all")

def main() -> int:
    files = sorted(HERE.glob("*.py"))
    failed = 0
    try:
        import matplotlib  # noqa: F401

        has_mpl = True
    except ImportError:
        has_mpl = False
    for path in files:
        if path.name in SKIP_ALWAYS:
            print(f"---- skip {path.name} (manual TF)")
            continue
        if path.name in PLOT_FILES and not has_mpl:
            print(f"---- skip {path.name} (no matplotlib)")
            continue
        print(f"==== {path.name}")
        try:
            runpy.run_path(str(path), run_name="__main__")
            if path.name in PLOT_FILES:
                _assert_open_figure(path.name)
        except SystemExit as e:
            if e.code not in (0, None):
                print(f"FAIL {path.name}: SystemExit {e.code}")
                failed += 1
        except Exception as e:
            print(f"FAIL {path.name}: {type(e).__name__}: {e}")
            failed += 1
    print(f"==== done  failures={failed}")
    return 1 if failed else 0

if __name__ == "__main__":
    sys.exit(main())
