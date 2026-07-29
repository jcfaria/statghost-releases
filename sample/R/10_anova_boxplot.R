# Objective: One-way ANOVA text (summary, Tukey) plus treatment boxplot.

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

boxplot(resp ~ trt,
        col = c("grey80", "skyblue", "tomato"),
        main = "sample 10 — ANOVA boxplot",
        xlab = "treatment",
        ylab = "response")
