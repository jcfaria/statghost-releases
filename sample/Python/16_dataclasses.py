# Objective: Dataclass RunningMean — stateful instance across chunks.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# No blank lines inside the class body (progressive REPL closes on blank).

from dataclasses import dataclass, field

@dataclass
class RunningMean:
    n: int = 0
    total: float = 0.0
    history: list = field(default_factory=list)
    def update(self, x: float) -> float:
        self.n += 1
        self.total += x
        self.history.append(x)
        return self.total / self.n

rm = RunningMean()
print(rm.update(10), rm.update(20), rm.update(30))
assert abs(rm.total / rm.n - 20.0) < 1e-9
print("PASS 16_dataclasses")
