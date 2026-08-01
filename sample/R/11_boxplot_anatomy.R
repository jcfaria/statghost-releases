# Objective: Annotated boxplot anatomy (quartiles, IQR, fences) beside a histogram.
# Needs package: fdth. Blank lines = sniper chunks (setup / box / labels / hist).

# --- setup: sample + Tukey fences ---
# X ~ N(mu=10, sigma=2), n = 1000
X <- rnorm(1e3,
           mean = 10,
           sd = 2)

# type=2 quartiles; keep Q1, Q2, Q3
q <- quantile(X, type = 2)[2:4]

# interquartile range
(iqr <- q[3] - q[1])

# Tukey fences
out.low <- q[1] - 1.5 * iqr
out.upp <- q[3] + 1.5 * iqr

# whisker ends (non-outlier extremes)
min.no <- min(X[X >= out.low])
max.no <- max(X[X <= out.upp])

# tick positions at extremes and quartiles (text before graphics)
at <- c(min(X),
        q[1],
        q[2],
        q[3],
        max(X))
at

c(min.no = min.no,
  max.no = max.no,
  out.low = out.low,
  out.upp = out.upp)

# --- GRAPHIC OUTPUT ---

# --- box panel: layout + bare boxplot ---
oldpar <- par(no.readonly = TRUE)

# two-panel layout: boxplot | histogram
layout(matrix(1:2, ncol = 2),
       widths = c(3, 1),
       heights = c(3.5, 3.5),
       TRUE)

par(mar = c(2,
            3.1,
            2.5,
            0))

min.y <- min(c(min(X), out.low))
max.y <- max(c(max(X), out.upp))

boxplot(X,
        xlim = c(0.5, 1.5),
        ylim = c(min.y - 0.2 * iqr,
                 max.y + 0.2 * iqr),
        boxwex = 0.4,
        at = 1,
        col = gray(0.8),
        axes = FALSE,
        main = "sample 11 — boxplot anatomy")

# --- labels: axis, quartiles, Min/Max, IQR, fences ---
axis(2,
     at = at,
     labels = format(round(at, 1)),
     las = 1)

text(x = 0.85,
     y = q[1:3],
     paste("q", 1:3, sep = ""),
     cex = 1)

# Min / Max non-outlier labels
text(x = 0.95,
     y = c(min.no, max.no),
     paste(c("Min.", "Max."), "no outlier"),
     cex = 0.9,
     pos = 2,
     col = "blue")

text(x = 0.80,
     y = c(min.no, max.no),
     paste("(",
           round(c(min.no, max.no), 1),
           ")",
           sep = ""),
     cex = 0.9,
     pos = 1,
     col = "blue")

# IQR brackets
segments(x0 = 1.3,
         y0 = c(q[1], q[3]),
         x1 = 1.4,
         y1 = c(q[1], q[3]),
         lty = 3,
         col = "red")

segments(x0 = 1.35,
         y0 = c(q[1], q[3]),
         x1 = 1.35,
         y1 = c(q[1] + 0.3 * iqr,
                q[3] - 0.3 * iqr),
         lty = 3,
         col = "red")

text(x = 1.35,
     y = q[2],
     "iqr = q3 - q1",
     col = "red",
     cex = 1)

# upper fence
segments(x0 = 1.35,
         y0 = q[3],
         x1 = 1.35,
         y1 = out.upp,
         lty = 3,
         col = "red")

segments(x0 = 1.3,
         y0 = out.upp,
         x1 = 1.4,
         y1 = out.upp,
         lty = 3,
         col = "red")

# lower fence
segments(x0 = 1.35,
         y0 = q[1],
         x1 = 1.35,
         y1 = out.low,
         lty = 3,
         col = "red")

segments(x0 = 1.3,
         y0 = out.low,
         x1 = 1.4,
         y1 = out.low,
         lty = 3,
         col = "red")

text(x = 1.30,
     y = c(out.low, out.upp),
     paste(c("q1 - 1.5", "q3 + 1.5"), "iqr", sep = ""),
     col = "red",
     pos = 2)

text(x = 1.18,
     y = c(out.low, out.upp),
     paste("(",
           round(c(out.low, out.upp), 1),
           ")",
           sep = ""),
     cex = 0.9,
     pos = 1,
     col = "red")

if (min(X) < min.no)
  segments(x0 = 1.4,
           y0 = out.low,
           x1 = 1.5,
           y1 = out.low,
           col = "red")

if (max(X) > max.no)
  segments(x0 = 1.4,
           y0 = out.upp,
           x1 = 1.5,
           y1 = out.upp,
           col = "red")

if (min(X) < min.no)
  arrows(x0 = 1.5,
         y0 = out.low,
         x1 = 1.5,
         y1 = min(X),
         length = 0.08,
         col = "red")

if (max(X) > max.no)
  arrows(x0 = 1.5,
         y0 = out.upp,
         x1 = 1.5,
         y1 = max(X),
         length = 0.08,
         col = "red")

if (min(X) < out.low)
  text(x = 1.35,
       y = out.low,
       "Outlier",
       col = "red",
       pos = 1,
       cex = 0.8)

if (max(X) > out.upp)
  text(x = 1.35,
       y = out.upp,
       "Outlier",
       col = "red",
       pos = 3,
       cex = 0.8)

# 25% span markers on the left
segments(x0 = 0.65,
         y0 = min(X),
         x1 = 0.65,
         y1 = max(X),
         col = "darkgreen")

points(x = rep(0.65, 5),
       y = c(min(X), q[1], q[2], q[3], max(X)),
       pch = 19,
       col = "darkgreen")

text(x = 0.55,
     y = c(min(X) + ((q[1] - min(X)) / 2),
           q[1] + ((q[2] - q[1]) / 2),
           q[2] + ((q[3] - q[2]) / 2),
           q[3] + ((max(X) - q[3]) / 2)),
     "25%",
     col = "darkgreen",
     cex = 1)

# --- hist panel: fdth frequency table ---
par(mar = c(2,
            0.1,
            1,
            1))

require(fdth)

tb <- fdt(X, k = 5e1)

brk <- with(tb,
            seq(breaks["start"],
                breaks["end"],
                breaks["h"]))

f <- with(tb, table$f)

plot(NULL,
     type = "n",
     xlim = c(0, max(f)),
     ylim = c(min.y - 0.2 * iqr,
              max.y + 0.2 * iqr),
     axes = FALSE)

rect(xleft = 0,
     ybottom = brk[-length(brk)],
     xright = f,
     ytop = brk[-1],
     col = gray(0.8),
     border = "white")

abline(h = c(out.low, q[1], q[2], q[3], out.upp),
       lty = 2,
       lwd = 1.5,
       col = "red")

par(oldpar)
layout(1)
message("PASS 11_boxplot_anatomy")
