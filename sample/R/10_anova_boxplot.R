# Objective: One-way ANOVA text (summary, Tukey) plus treatment boxplot.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).

set.seed(5)
n <- 20
trt <- factor(rep(c("ctrl", "low", "high"), each = n))

resp <- c(rnorm(n,
                10,
                1.5),
          rnorm(n,
                11.5,
                1.5),
          rnorm(n,
                13,
                1.8))

fit <- aov(resp ~ trt)

summary(fit)
TukeyHSD(fit)

#. --- GRAPHIC OUTPUT ---

boxplot(resp ~ trt,
        col = c("grey80", "skyblue", "tomato"),
        main = "sample 10 — ANOVA boxplot",
        xlab = "treatment",
        ylab = "response")
message("PASS 10_anova_boxplot")
