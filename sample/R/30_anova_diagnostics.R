# Objective: Multi-step ANOVA challenge — Tukey HSD plus diagnostic plots.
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

# boxplot
boxplot(y ~ g,
        data = d,
        col = c("gray80", "lightblue", "salmon"),
        main = "sample 30 — ANOVA groups",
        xlab = "group",
        ylab = "y")

# diagnostics (2x2)
par(mfrow = c(2, 2),
    mar = c(4, 4, 2.5, 1))
plot(fit)
par(mfrow = c(1, 1))
