# Objective: pathlib + json round-trip under a temporary directory.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).

import json
import tempfile
from pathlib import Path

payload = {"engine": "python", "ok": True, "n": 3, "xs": [1, 2, 3]}
with tempfile.TemporaryDirectory() as td:
    path = Path(td) / "statg24.json"
    path.write_text(json.dumps(payload, indent=2), encoding="utf-8")
    loaded = json.loads(path.read_text(encoding="utf-8"))
assert loaded["xs"] == [1, 2, 3]
print(loaded)
print("PASS 24_pathlib_json")
