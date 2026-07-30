# Sample Julia scripts — STATghost (VP-STATG-16..18 / D22 — planned engine)

Progressive complexity for a **stateful** Julia sniper (Arm → Ctrl+C), not
one-shot `julia script.jl`. Valid today under system **`julia`** (lab: 1.12.6).

**Premise (D22):** system Julia on PATH. Stdlib-first; **Plots.jl** /
**Distributions.jl** / **DifferentialEquations.jl** optional (SKIP if missing).

Planning: `w_todo/w_pt/br/07_sap_julia_repl.txt` · `08_cpr_julia_repl.txt`

| File | Plot? | Topic / TF |
|------|-------|------------|
| `01_hello.jl` | no | println / arithmetic |
| `02_arithmetic.jl` | no | ÷ // ^ rationals |
| `03_strings.jl` | no | interpolation / join |
| `04_arrays.jl` | no | vectors / matrices |
| `05_tuples_named.jl` | no | Tuple / NamedTuple |
| `06_dicts.jl` | no | Dict get! |
| `07_functions.jl` | no | defs survive chunks |
| `08_broadcasting.jl` | no | dot broadcast |
| `09_comprehensions.jl` | no | array comps |
| `10_structs.jl` | no | immutable struct |
| `11_multiple_dispatch.jl` | no | methods |
| `12_exceptions.jl` | no | intentional error (TF) |
| `13_modules_using.jl` | no | `using Statistics` |
| `14_statistics_base.jl` | yes* | std / quantile / cor (+ hist) |
| `15_linear_algebra.jl` | no | `\` / eigen |
| `16_random_seed.jl` | no | seeded RNG |
| `17_plot_line.jl` | yes* | Plots.jl line (optional) |
| `18_plot_hist.jl` | yes* | Plots.jl hist (optional) |
| `19_plot_scatter.jl` | yes* | Plots.jl scatter (optional) |
| `20_csv_io.jl` | no | DelimitedFiles |
| `21_monte_carlo.jl` | no | π estimate (small n) |
| `22_parametric_types.jl` | no | `Box{T}` |
| `23_macros_basics.jl` | no | tiny macro |
| `24_threads_map.jl` | no | `@threads` fill (small n) |
| `25_generators.jl` | no | generator expr |
| `26_stateful_chain.jl` | no | z-score chain |
| `27_least_squares.jl` | yes* | OLS + optional resid plot |
| `28_distributions_opt.jl` | no* | Distributions.jl (optional) |
| `29_ode_opt.jl` | no* | DifferentialEquations (optional) |
| `30_stateful_fit_predict.jl` | yes* | fit → predict (+ optional plot) |
| `31_external_gr_window.jl` | ext* | **GKS QtTerm** (Settings: Show GR; SKIP if headless) |
| `32_plot_bar.jl` | yes* | Plots.jl bar |
| `33_plot_boxplot.jl` | yes* | Plots.jl group means (bar) |
| `34_plot_heatmap.jl` | yes* | Plots.jl heatmap |

\* optional package — prints `SKIP …` when missing (not a hard fail).
`ext*` = external interactive window (not Plot panel); needs the matching
Settings option + Arm.

Quick check (stdlib scripts; skips optional pkgs):

```text
julia -e "include(joinpath(\"sample\",\"Julia\",\"01_hello.jl\"))"
```

STATghost **SJ** (`--sj`) runs the Julia lane alone; **ST** (`--st` / `--tf-samples`) includes R rterm+rdll and Python too.

## Style

Teaching / didactic REPL is the primary purpose. Each sample starts with
`# Objective: …`; short EN comments for non-obvious steps.

- **Blank lines = sniper chunks** — **no blank lines inside** `function` /
  `macro` / `try` bodies (progressive REPL treats blank as end-of-compound).
- Break long kwargs / multi-arg calls across lines.
- Optional deps print `SKIP …`; Plots use `show=false` + `GKSwstype=100`
  unless the sample is explicitly *external* (`31_external_*`).
