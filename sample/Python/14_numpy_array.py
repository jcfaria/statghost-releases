# Objective: Optional numpy — reshape, sum, and normal-sample moments.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# Prints SKIP if numpy is not installed.

try:
    import numpy as np
except ImportError:
    print("SKIP 14_numpy_array (pip install numpy)")
else:
    np.random.seed(17)
    a = np.arange(12).reshape(3, 4)
    b = np.random.normal(size=1000)
    assert a.shape == (3, 4)
    assert a.sum() == 66
    assert abs(float(b.mean())) < 0.15
    print(a)
    print(f"b mean={b.mean():.4f} sd={b.std():.4f}")
    print("PASS 14_numpy_array")
