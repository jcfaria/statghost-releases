# Sample R scripts — STATghost manual / smoke tests

Copy any file’s contents (or open and Ctrl+A / Ctrl+C) with **Arm** on.
Blank lines separate sniper **chunks**. Prefer progressive eval for overlays.

| File | Plot? | Aspect |
|------|-------|--------|
| `01_hello.R` | no | arithmetic / single line |
| `02_vectors.R` | no | vectors, `data.frame`, `cor` |
| `03_lm_summary.R` | no | `lm` + `summary` |
| `04_plot_points.R` | yes | basic `plot` |
| `05_plot_lines.R` | yes | `abline` / `lowess` |
| `06_plot_hist.R` | yes | `hist` |
| `07_error.R` | no | intentional `stop` (TF) |
| `08_factors_table.R` | no | `factor`, `table`, `chisq.test` |
| `09_matrix_apply.R` | no | matrix, `qr`, `apply`, `eigen` |
| `10_anova_boxplot.R` | yes | `aov`, `TukeyHSD`, `boxplot` |
| `11_boxplot_anatomy.R` | yes | annotated boxplot + hist (`fdth`) |
| `12_rl_linear_vs_nlinear.R` | yes | `lm` / `nls`, linear vs non-linear |
| `13_teorema_fundamental_calculo.R` | yes | FTC illustration (`ggplot2`) |
| `14_va_propriedades.R` | yes | E/V properties of r.v. |
| `15_modern_operators.R` | no | base `\|\>` / `\\()` / raw / `_` → magrittr |
| `16_paired_ttest.R` | yes | paired `t.test`, Cohen’s d, stripchart |
| `17_glm_logistic.R` | yes | binomial `glm` + probability curve |
| `18_mfrow_panels.R` | yes | 2×2 `mfrow` panel |
| `19_timeseries_acf.R` | yes | `ts` + ACF/PACF |
| `20_bootstrap_ci.R` | yes | bootstrap mean CI |
| `21_model_matrix_qr.R` | yes | `model.matrix`, QR rank, resid plot |
| `22_contour_surface.R` | yes | `filled.contour` |
| `23_cor_heatmap.R` | yes | `image()` correlation heatmap |
| `24_clt_simulation.R` | yes | CLT simulation |
| `25_s3_class.R` | yes | S3 class / print / plot methods |
| `26_wide_output.R` | no | wide matrix / `by` console stress |
| `27_overlay_replay.R` | yes | plot then `lines`/`points` (replay) |
| `28_wilcox_ks_ecdf.R` | yes | Wilcoxon, KS, ecdf overlay |
| `29_closures.R` | yes | closures / `<<-` |
| `30_anova_diagnostics.R` | yes | ANOVA + Tukey + `plot(aov)` |
| `31_external_rgl.R` | ext* | **RGL OpenGL window** (Settings: Show RGL; SKIP if off/missing) |

Seeded where randomness matters so PNG/PDF dual-draw stay aligned.

Deps: `11` → **fdth**; `13` → **ggplot2**; `15` → **magrittr** (auto-install to user lib);
`31` → **rgl** + Settings → Show RGL window.

## Style

Teaching / didactic REPL is the primary purpose. Each sample starts with
`# Objective: …`; short EN comments for non-obvious steps.

- **Blank lines = sniper chunks** (Arm → Ctrl+C progressive eval).
- Break calls with **>2 arguments** at commas (`plot`, `abline`, `lines`,
  `text`, `segments`, `legend`, …).
- Keep lessons sniper-sized; trim mega-files rather than one long Arm paste.
- Optional deps print `SKIP …` (TF-safe); leave figures open for Plot capture.
