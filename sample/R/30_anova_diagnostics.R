# Objective: Multi-step ANOVA challenge — Tukey HSD plus diagnostic plots.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# No extra packages. Em-dash in title is fine under cairo_pdf on Linux.

set.seed(30)
g <- gl(3, 25, labels = c("ctrl", "low", "high"))
y <- c(rnorm(25,
             10,
             1.5),
       rnorm(25,
             11.2,
             1.5),
       rnorm(25,
             13.0,
             1.8))
d <- data.frame(g, y)

fit <- aov(y ~ g, data = d)
summary(fit)
TukeyHSD(fit)

#. --- GRAPHIC OUTPUT ---

# boxplot
boxplot(y ~ g,
        data = d,
        col = c("gray80", "lightblue", "salmon"),
        main = "sample 30 — ANOVA groups",
        xlab = "group",
        ylab = "y")

# diagnostics (2x2) — oma[3] >= 1 so plot.lm draws sub.caption once (outer)
oldpar <- par(no.readonly = TRUE)
par(mfrow = c(2, 2),
    mar = c(4, 4, 2.5, 1),
    oma = c(0, 0, 2, 0))
plot(fit,
     sub.caption = "sample 30 — aov diagnostics")
par(oldpar)
message("PASS 30_anova_diagnostics")
