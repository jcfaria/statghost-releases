# Objective: Factors, contingency table, proportions, and chi-square (base R, no graphics).
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).

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
message("PASS 08_factors_table")
