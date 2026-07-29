# Objective: Advanced stdlib statistics — fmean, pstdev, and correlation.

import random
import statistics as st

random.seed(20)
x = [random.gauss(0, 1) for _ in range(80)]
y = [0.7 * xi + random.gauss(0, 0.5) for xi in x]
print({
    "mean": st.fmean(x),
    "pstdev": st.pstdev(x),
    "corr": st.correlation(x, y),
})
assert abs(st.correlation(x, y)) > 0.5
print("PASS 20_statistics_adv")
