# Objective: Regex named-ish extraction of patient_id and score pairs.

import re

text = """
patient_id=P-001  score=12.5
patient_id=P-002  score=9.0
patient_id=P-003  score=15.25
"""
pat = re.compile(r"patient_id=(P-\d+)\s+score=([0-9.]+)")
rows = [(m.group(1), float(m.group(2))) for m in pat.finditer(text)]
print(rows)
assert len(rows) == 3 and rows[0][0] == "P-001"
print("PASS 19_regex")
