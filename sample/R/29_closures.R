# Objective: Closures with <<- and lexical scope; plot factory outputs.
# Blank lines = sniper chunks. Overlay lines/legend stay with plot().

# counter factory (mutable state via <<-)
make_counter <- function(start = 0L) {
  i <- as.integer(start)
  function(step = 1L) {
    i <<- i + as.integer(step)
    i
  }
}

ctr <- make_counter(10)
ctr()
ctr(3)
ctr()

# lexical scope: each factory call freezes its own k
factory <- function(k) {
  force(k)
  function(x) k * x + 1
}
f2 <- factory(2)
f5 <- factory(5)
c(f2(10), f5(10))

# plot both closures on the same canvas
xs <- 0:10
y2 <- vapply(xs, f2, numeric(1))
y5 <- vapply(xs, f5, numeric(1))

plot(xs,
     y2,
     type = "b",
     pch = 16,
     col = 2,
     ylim = range(c(y2, y5)),
     main = "sample 29 — closures f2 / f5",
     xlab = "x",
     ylab = "f(x)")
lines(xs,
      y5,
      type = "b",
      pch = 17,
      col = 4)
legend("topleft",
       legend = c("k=2", "k=5"),
       col = c(2, 4),
       pch = c(16, 17),
       bty = "n")
message("PASS 29_closures")
