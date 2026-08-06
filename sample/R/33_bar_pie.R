# Objective: Bar proportions and pie chart from a small categorical table.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).

set.seed(33)
grp <- factor(sample(c("A", "B", "C", "D"),
                     size = 80,
                     replace = TRUE,
                     prob = c(0.4, 0.3, 0.2, 0.1)))

tab <- table(grp)
props <- prop.table(tab)
tab
round(props, 3)

#. --- GRAPHIC OUTPUT ---

oldpar <- par(no.readonly = TRUE)
par(mfrow = c(1, 2),
    mar = c(4, 4, 2.5, 1))

barplot(props,
        col = c("steelblue", "seagreen", "tomato", "goldenrod"),
        main = "sample 33 — bar",
        ylab = "proportion",
        ylim = c(0, max(props) * 1.15))

pie(tab,
    col = c("steelblue", "seagreen", "tomato", "goldenrod"),
    main = "sample 33 — pie")

par(oldpar)
message("PASS 33_bar_pie")
