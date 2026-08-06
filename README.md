# STATghost - releases

**Sniper REPL for statistics** - clipboard -> local engines (**R**, **Python**, **Julia**) -> text/plot.

STATghost stays small and offline: when **armed**, it watches `Ctrl+C`, evaluates the selection in a local session, and shows results in a compact panel. When **disarmed**, the clipboard behaves normally.

This repository publishes **ready-to-run builds**, teaching samples, and Help.  
Source code: [github.com/jcfaria/statghost](https://github.com/jcfaria/statghost).

---

## Goals

- A **lightweight** alternative to a full IDE for classroom / lab PCs
- **Progressive REPL** (stateful session) - not one-shot script runners
- Clear **samples** for teaching R, Python, and Julia side by side
- Offline-first: engines already installed on the machine

---

## Status

Public **distribution** channel. Version tags match product milestones (`v0.4.19`).  
Current Win64 build: **v0.4.19** - [`statghost-v0.4.19-win64.zip`](https://github.com/jcfaria/statghost-releases/releases/tag/v0.4.19).

| Area | Notes |
|------|--------|
| Win64 zip | Latest on [Releases](https://github.com/jcfaria/statghost-releases/releases) |
| Linux | Notes under [Linux/](Linux/); assets when published |
| Samples / Help | Mirrored in [sample/](sample/) and [help/](help/) |

---

## Layout

| Path | Contents |
|------|----------|
| [Win64/](Win64/) | Windows x64 notes - binaries via [Releases](https://github.com/jcfaria/statghost-releases/releases) |
| [Linux/](Linux/) | Linux x86_64 notes - binaries via Releases |
| [sample/](sample/) | Didactic scripts (Arm -> Ctrl+C) |
| [help/](help/) | User guide (HTML + PDF) |

---

## Quick start

1. Install **R** and/or **Python** and/or **Julia** on the machine.
2. Download the latest **Win64** or **Linux** asset from [Releases](https://github.com/jcfaria/statghost-releases/releases).
3. Unpack, run `statghost` (Windows: `statghost.exe`).
4. Open Settings -> choose the engine -> **Arm** -> copy a chunk from [sample/](sample/).
5. Browse [help/statghost_help.html](help/statghost_help.html) if needed.

Source builds and working docs: [statghost](https://github.com/jcfaria/statghost).

---

## Author / Maintainer

Started and maintained by:

**Faria, J. C.**  
Universidade Estadual de Santa Cruz — UESC  
Departamento de Ciências Exatas — DCEX  
Ilhéus — Bahia — Brazil

---

## License

**Mozilla Public License 2.0 (MPL-2.0)** — see [`LICENSE`](LICENSE).
