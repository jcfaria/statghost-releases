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
6. Update that language’s README table.

Detail: `.cursor/rules/statghost-didactic-repl.mdc` · D23 in `w_todo`.

Copy any file with **Arm** on. Prefer **one chunk at a time**. Compound blocks
need a closing blank in a normal REPL — STATghost sends one at end of clipboard
when needed.

Automated L1 TF (R|Python):

```text
powershell -File src/build.ps1
powershell -File src/tf_samples.ps1
```

Report: `src/_out/statg_tf_samples.txt` (`RESULT=BOK` / `FAIL`).

See each folder’s table for plots / deps.
