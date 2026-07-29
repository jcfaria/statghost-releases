# Objective: Force an *external* RGL OpenGL window (cannot embed in Plot panel).
# Needs: package rgl + Settings → Session → R → Show RGL window, then Arm.
# With the option off (default), prints SKIP (TF-safe). Blank lines = sniper chunks.

# package guard
if (!requireNamespace("rgl", quietly = TRUE)) {
  message('SKIP 31_external_rgl (install.packages("rgl"))')
}

# Settings guard (NULL device = no OpenGL window)
if (requireNamespace("rgl", quietly = TRUE) &&
    (isTRUE(getOption("rgl.useNULL", FALSE)) ||
     identical(toupper(Sys.getenv("RGL_USE_NULL", "")), "TRUE"))) {
  message("SKIP 31_external_rgl (enable Settings → Show RGL window, then Arm)")
}

# 3D scatter — external OpenGL window
if (requireNamespace("rgl", quietly = TRUE) &&
    !isTRUE(getOption("rgl.useNULL", FALSE)) &&
    !identical(toupper(Sys.getenv("RGL_USE_NULL", "")), "TRUE")) {
  set.seed(31)
  n <- 200L
  x <- rnorm(n)
  y <- rnorm(n)
  z <- x + y + rnorm(n, sd = 0.3)

  rgl::open3d()
  rgl::plot3d(x,
              y,
              z,
              col = "steelblue",
              size = 4,
              xlab = "x",
              ylab = "y",
              zlab = "z")
  rgl::title3d(main = "STATghost — external RGL")
  message("PASS 31_external_rgl — external OpenGL window should be open")
}
