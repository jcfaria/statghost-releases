# Objective: Factors, contingency table, proportions, and chi-square (base R, no graphics).

set.seed(11)
grp <- factor(sample(c("A", "B", "C"),
                     60,
                     replace = TRUE))

out <- factor(sample(c("yes", "no"),
                     60,
                     replace = TRUE,
                     prob = c(0.4, 0.6)))

tab <- table(grp, out)
tab

prop.table(tab, 1)

chisq.test(tab)
