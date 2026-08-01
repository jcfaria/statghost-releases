# Sample Python scripts — STATghost (VP-STATG-13..15 / v0.3.5+)

Progressive complexity for the **stateful** sniper (Arm → Ctrl+C), not one-shot `python file.py`.

**Premise (D21):** system Python on PATH (`python` / `python3` / `py -3`). Stdlib-first; **matplotlib** for plots; optional **numpy**.

**Two-stage (text → graphic):** mixed scripts print summaries first, then
`# --- GRAPHIC OUTPUT ---`, then matplotlib (Agg; leave fig open). ST can
split on that marker. Intentional-error sample (`09_exceptions.py`) has no
marker.

| File | Plot? | Topic / TF |
|------|-------|------------|
| `01_hello.py` | no | print / arithmetic |
| `02_arithmetic.py` | no | ints, floats, asserts |
| `03_strings.py` | no | f-strings, slicing |
| `04_lists_tuples.py` | no | sequences |
| `05_dicts.py` | no | mappings |
| `06_functions.py` | no | defs survive next chunk |
| `07_comprehensions.py` | no | list/dict comps |
| `08_classes.py` | no | simple class |
| `09_exceptions.py` | no | intentional error (TF) |
| `10_stdlib_stats.py` | no | `statistics` module |
| `11_plot_line.py` | yes | matplotlib line (leave fig open) |
| `12_plot_hist.py` | yes | matplotlib hist |
| `13_plot_scatter.py` | yes | matplotlib scatter |
| `14_numpy_array.py` | no | numpy if installed |
| `15_stateful_chain.py` | no | multi-step state demo |
| `16_dataclasses.py` | no | dataclasses RunningMean |
| `17_generators.py` | no | `yield` / fib |
| `18_itertools.py` | no | accumulate / pairwise / islice |
| `19_regex.py` | no | named extractions |
| `20_statistics_adv.py` | no | fmean / correlation |
| `21_plot_subplots.py` | yes | 2×2 multi-panel |
| `22_plot_twin_axis.py` | yes | twin y-axis |
| `23_contextlib.py` | no | context manager seed |
| `24_pathlib_json.py` | no | pathlib + json |
| `25_numpy_linalg.py` | no | `np.linalg.solve` (optional) |
| `26_compound_try_for.py` | no | try/for compound flush |
| `27_collections.py` | no | Counter / deque / defaultdict |
| `28_functools.py` | no | lru_cache / partial |
| `29_plot_stacked_area.py` | yes | stackplot + annotate |
| `30_stateful_fit_predict.py` | yes | fit → predict + scatter |
| `31_external_mpl_window.py` | ext* | **TkAgg window** (Settings: Show matplotlib; SKIP if Agg) |
| `32_bar_pie.py` | yes | bar + pie |
| `33_boxplot.py` | yes | three-group boxplot |
| `34_hexbin.py` | yes | hexbin density |

Run assert-style checks (non-plot / non-error) from repo root:

```text
python sample/Python/run_tests.py
```

Seeded where randomness matters. Plot scripts must **leave the figure open** for Agg → Plot panel (no `plt.close` in lesson scripts).

## Style

Teaching / didactic REPL is the primary purpose (golden rule: interleaved I/O
students can read aloud). Each sample starts with `# Objective: …`; short EN
comments; PEP-ish spacing.

- **Do not put blank lines inside `class` / `def` / `if-elif-else` / `try`
  bodies** — the progressive sniper REPL treats a blank as “end compound”.
- Mixed text+plot: `# --- GRAPHIC OUTPUT ---` between stages.
- **Every plot title includes `sample NN — …`** (`set_title` / `suptitle`).
- Leave figures open for Agg → Plot panel; external-window samples (`31`) use
  Settings + `PASS`/`SKIP` guards.
