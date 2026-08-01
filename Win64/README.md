# Win64

Download the latest **Windows x64** zip from:

https://github.com/jcfaria/statghost-releases/releases

Current build: **v0.4.7** — `statghost-v0.4.7-win64.zip`

Typical contents of the zip:

- `statghost.exe` — main app  
- `statghost_rhost.exe` — R DLL sidecar (when using R)  
- `statghost_py_repl.py` / `statghost_jl_repl.jl` — REPL drivers  
- `lexer/` — Cuda lexers for Console (ATSynEdit)  
- `png/` — UI glyphs  
- `sample/` — didactic scripts (also mirrored in this repo)  
- help HTML / PDF copy

Unpack anywhere and run `statghost.exe`. Prefer a folder you can write to (plot history uses a temp dir under AppData).

Do **not** commit large `.exe` / `.zip` files into this Git tree — attach them to GitHub Releases instead.
