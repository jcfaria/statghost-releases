# STATghost — releases

**Sniper REPL for statistics** — clipboard → local engines (**R**, **Python**, **Julia**) → text/plot.

STATghost stays small and offline: when **armed**, it watches `Ctrl+C`, evaluates the selection in a local session, and shows results in a compact panel. When **disarmed**, the clipboard behaves normally.

This repository publishes **ready-to-run builds** and teaching samples.  
Source development happens in a separate private repo until the project is ready for a public code drop.

## Goals

- A **lightweight** alternative to a full IDE for classroom / lab PCs  
- **Progressive REPL** (stateful session) — not one-shot script runners  
- Clear **samples** for teaching R, Python, and Julia side by side  
- Offline-first: engines already installed on the machine

## Layout

| Path | Contents |
|------|----------|
| [`Win64/`](Win64/) | Windows x64 notes — binaries via [Releases](https://github.com/jcfaria/statghost-releases/releases) |
| [`Linux/`](Linux/) | Linux x86_64 notes — binaries via Releases |
| [`sample/`](sample/) | Didactic scripts (Arm → Ctrl+C) |
| [`help/`](help/) | User guide (HTML + PDF) |

## Quick start

1. Install **R** and/or **Python** and/or **Julia** on the machine.  
2. Download the latest **Win64** or **Linux** asset from [Releases](https://github.com/jcfaria/statghost-releases/releases).  
3. Unpack, run `statghost` (Windows: `statghost.exe`).  
4. Open Settings → choose the engine → **Arm** → copy a chunk from [`sample/`](sample/).  
5. Browse [`help/statghost_help.html`](help/statghost_help.html) if needed.

## Licence

[Mozilla Public License 2.0](LICENSE) (MPL-2.0).

## Status

Public **distribution** channel. Version tags match product milestones (`v0.x.y`).  
Latest Win64 build: **v0.4.7**. Linux gtk2 asset still **v0.4.2** until the next lab package.  
Feedback welcome via GitHub Issues on this repo.

## Author / Maintainer

Started and maintained by:

**Faria, J. C.**  
Universidade Estadual de Santa Cruz — UESC  
Departamento de Ciências Exatas — DCEX  
Ilhéus — Bahia — Brazil
