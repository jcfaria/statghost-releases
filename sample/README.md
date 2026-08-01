# Sample scripts for STATghost (Arm → Ctrl+C)

**Primary purpose: teaching.** Every script is classroom lesson material for
the progressive sniper REPL (R | Python | Julia).

Layout:

| Folder | Language |
|--------|----------|
| [`R/`](R/) | R sniper TF / demos (shipped) |
| [`Python/`](Python/) | Progressive Python REPL TF (VP-STATG-13..15) |
| [`Julia/`](Julia/) | Progressive Julia curriculum (VP-STATG-16..18) |

## Golden rule (when adding a script)

1. `# Objective: …` (EN) first line.
2. Short EN step comments where needed.
3. Blank lines = intentional sniper **chunks** (not padding inside compounds).
4. Readable calls (R: break at commas if **>2** args; also `abline`/`lines`).
5. Progressive clarity over golf; optional deps print `SKIP …`.
6. End with a visible **`PASS <stem>`** (or intentional **`FAIL …`** / **`SKIP …`**).
7. Multi-figure scripts: blank line **between** figures; keep `abline`/`lines`/
   `points` in the **same** chunk as their `plot()`/`hist()` (no orphan overlays).
8. Mixed text + plot: put all meaningful text I/O first, then exactly one
   `# --- GRAPHIC OUTPUT ---` marker, then all graphics (ST two-stage).
9. **Every plot title includes `sample NN — …`** (R / Python / Julia).
10. Update that language’s README table.

Detail: `.cursor/rules/statghost-didactic-repl.mdc` · D23 in `w_todo`.

Copy any file with **Arm** on. Prefer **one chunk at a time**. Compound blocks
need a closing blank in a normal REPL — STATghost sends one at end of clipboard
when needed.

Automated sample-matrix smoke (**SR** / **SP** / **SJ** / **ST** full;
**SRD** / **SPD** / **SJD** / **STD** Dev = random ~20% of scripts per lane).
**Golden:** in Dev always use a *D mode.

```text
powershell -File src/build.ps1
powershell -File src/tf_samples.ps1              # ST (full)
powershell -File src/tf_samples.ps1 -Mode STD    # Dev total
powershell -File src/tf_samples.ps1 -Mode SJD    # Dev Julia
```

Reports: `src/_out/statg_sr|sp|sj|st|srd|spd|sjd|std_report.txt` (`RESULT=BOK` / `FAIL`).
Alias for ST: `--tf-samples`.

See each folder’s table for plots / deps.
