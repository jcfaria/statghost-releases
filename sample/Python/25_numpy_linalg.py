# Objective: Optional numpy.linalg.solve on a SPD system; SKIP if missing.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).

try:
    import numpy as np
except ImportError:
    print("SKIP 25_numpy_linalg (numpy not installed)")
else:
    np.random.seed(25)
    A = np.random.randn(4, 4)
    A = A.T @ A + np.eye(4)
    b = np.random.randn(4)
    x = np.linalg.solve(A, b)
    resid = np.linalg.norm(A @ x - b)
    print({"x": x.round(4).tolist(), "resid": float(resid)})
    assert resid < 1e-8
    print("PASS 25_numpy_linalg")
