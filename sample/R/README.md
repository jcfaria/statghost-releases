# Sample R scripts — STATghost manual / smoke tests

Copy any file’s contents (or open and Ctrl+A / Ctrl+C) with **Arm** on.
Blank lines separate sniper **chunks**. Prefer progressive eval for overlays.

**Two-stage (text → graphic):** scripts with both console I/O and plots put
all meaningful text first, then `#. --- GRAPHIC OUTPUT ---`, then graphics.
ST can split on that marker. Intentional-error sample (`07_error.R`) has no
marker.

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
| `32_qqnorm.R` | yes | QQ-normal + Shapiro |
| `33_bar_pie.R` | yes | bar proportions + pie |
| `34_pairs.R` | yes | `pairs` scatter matrix |
| `35_density_rug.R` | yes | density + rug |
| `36_highlighter_notes.R` | no | HG SampleText ids: Note1/2/3 vs Comment |

Seeded where randomness matters so PNG/PDF dual-draw stay aligned.

Deps: `11` → **fdth**; `13` → **ggplot2**; `15` → **magrittr** (auto-install to user lib);
`31` → **rgl** + Settings → Show RGL window.

## Style

Teaching / didactic REPL is the primary purpose. Each sample starts with
`# Objective: …`; then didactic highlighter Notes (`#.` / `#..` / `#...`);
short EN comments for non-obvious steps.

- **Blank lines = sniper chunks** (Arm → Ctrl+C progressive eval).
- Break calls with **>2 arguments** at commas (`plot`, `abline`, `lines`,
  `text`, `segments`, `legend`, …).
- Mixed text+plot: `#. --- GRAPHIC OUTPUT ---` between stages.
- Plot titles include the script number (`main = "sample NN — …"`).
- If the script changes `par()` / `layout()`, wrap with
  `oldpar <- par(no.readonly = TRUE)` … `par(oldpar)` (not only
  `par(mfrow = c(1, 1))`).
- Keep lessons sniper-sized; trim mega-files rather than one long Arm paste.
- Optional deps print `SKIP …` (TF-safe); leave figures open for Plot capture.
