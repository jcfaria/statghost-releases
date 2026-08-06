# Objective: Twin y-axis plot — temperature and humidity on shared x.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# Leave the figure open for Agg → Plot panel capture.

import math
import statistics

xs = [i / 10 for i in range(0, 63)]
temp = [20 + 5 * math.sin(x) for x in xs]
hum = [55 + 15 * math.cos(x / 1.3) for x in xs]
print(
    "n=",
    len(xs),
    "temp_mean=",
    round(statistics.mean(temp), 2),
    "hum_mean=",
    round(statistics.mean(hum), 2),
)

#. --- GRAPHIC OUTPUT ---

import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt

fig, ax1 = plt.subplots()
ax2 = ax1.twinx()
(l1,) = ax1.plot(xs, temp, color="crimson", label="temp")
(l2,) = ax2.plot(xs, hum, color="navy", linestyle="--", label="humidity")
ax1.set_xlabel("t")
ax1.set_ylabel("°C", color="crimson")
ax2.set_ylabel("%RH", color="navy")
ax1.set_title("sample 22 — twin axis")
ax1.legend(handles=[l1, l2], loc="upper right")
fig.tight_layout()
print("PASS 22_twin_axis")
