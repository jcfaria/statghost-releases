# Objective: Minimal S3 class with custom print, summary, and plot methods.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# Blank lines = sniper chunks.

# constructor
statg_point <- function(x, y, label = "P") {
  structure(list(x = x, y = y, label = label),
            class = "statg_point")
}

print.statg_point <- function(x, ...) {
  cat(sprintf("statg_point[%s]: (%.3f, %.3f)\n",
              x$label,
              x$x,
              x$y))
  invisible(x)
}

summary.statg_point <- function(object, ...) {
  r <- sqrt(object$x^2 + object$y^2)
  structure(list(label = object$label, radius = r),
            class = "summary.statg_point")
}

print.summary.statg_point <- function(x, ...) {
  cat(sprintf("summary[%s]: radius=%.4f\n",
              x$label,
              x$radius))
  invisible(x)
}

# plot method — point, label, radius segment
plot.statg_point <- function(x, ...) {
  plot(x$x,
       x$y,
       pch = 16,
       xlim = c(0, max(5, x$x)),
       ylim = c(0, max(5, x$y)),
       main = paste("sample 25 —", x$label),
       xlab = "x",
       ylab = "y",
       ...)
  text(x$x,
       x$y,
       labels = x$label,
       pos = 3)
  segments(0,
           0,
           x$x,
           x$y,
           lty = 2,
           col = "gray40")
}

# use: construct, print, summarize
p <- statg_point(3, 4, "A")
p
summary(p)

#. --- GRAPHIC OUTPUT ---

plot(p)
message("PASS 25_s3_class")
