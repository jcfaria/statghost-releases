# Objective: Illustrate the Fundamental Theorem of Calculus with shaded areas.
#. Note_1 - Arm / Ctrl+C one chunk at a time (highlighter Note1).
#.. Note_2 - blank lines are sniper chunks, not noise (highlighter Note2).
#... Note_3 - Notes never execute; they only colour the transcript (Note3).
# Needs package: ggplot2 (auto-install to user lib if missing).
# Blank lines = sniper chunks. Keep ~4–5 clear examples (not a mega Arm paste).

# text prelude — net areas via antiderivatives (no drawing yet)
F_lin <- function(x) 1 / 2 * (x^2)
F_quad <- function(x) 1 / 3 * (x^3)
F_sin <- function(x) -cos(x)

c(area_triangle_0_2 = F_lin(2) - F_lin(0),
  area_x2_1_3 = F_quad(3) - F_quad(1),
  area_sin_0_2pi = F_sin(2 * pi) - F_sin(0),
  area_sin_0_pi = F_sin(pi) - F_sin(0),
  p_abs_z_lt_1 = pnorm(1) - pnorm(-1),
  p_height_160_180 = pnorm(180, 170, 10) - pnorm(160, 170, 10))

# Helper: plot f, shade [x1, x2], label net area via antiderivative F
g_ftc <- function(f,
                  F_antideriv,
                  x1 = 0,
                  x2 = 2,
                  expand = 0.5,
                  lim_x = NULL) {

  if (!requireNamespace("ggplot2", quietly = TRUE))
    install.packages("ggplot2", repos = "https://cloud.r-project.org")
  library(ggplot2)

  margin <- (x2 - x1) * expand

  x_curve <- seq(x1 - margin,
                 x2 + margin,
                 length.out = 1e3)

  curve_data <- data.frame(x = x_curve,
                           y = f(x_curve))

  x_shade <- seq(x1,
                 x2,
                 length.out = 1e3)

  shade_data <- data.frame(x = x_shade,
                           y = f(x_shade))

  Area <- round(F_antideriv(x2) - F_antideriv(x1), 3)

  p <- ggplot(curve_data,
              aes(x = x, y = y)) +
    geom_line(color = "blue", linewidth = 1) +
    geom_area(data = shade_data,
              fill = "lightblue",
              alpha = 0.5) +
    geom_vline(xintercept = c(x1, x2),
               linetype = "dashed",
               color = "red") +
    annotate("label",
             x = mean(c(x1, x2)),
             y = mean(range(shade_data$y)),
             label = paste0("Area=", Area),
             size = 5) +
    labs(title = bquote("sample 13 — Function:" ~
                          f(x) == .(body(f))),
         subtitle = bquote("Integral via FTC:" ~
                             F(.(x2)) - F(.(x1)) == .(Area)),
         caption = bquote("Antiderivative used:" ~
                            F(x) == .(body(F_antideriv))),
         x = "x",
         y = "f(x)") +
    theme_bw() +
    theme(plot.caption = element_text(hjust = 0))

  if (!is.null(lim_x)) {
    p <- p + coord_cartesian(xlim = lim_x)
  }

  # ggplot draws only when printed
  print(p)
  invisible(p)
}

#. --- GRAPHIC OUTPUT ---

oldpar <- par(no.readonly = TRUE)
par(mfrow = c(1, 1))

#.. example 1: linear (triangle under y = x)
f <- function(x) x
F_antideriv <- function(x) 1 / 2 * (x^2)

g_ftc(f, F_antideriv)

#.. example 2: quadratic
f <- function(x) x^2
F_antideriv <- function(x) 1 / 3 * (x^3)

g_ftc(f,
      F_antideriv,
      1,
      3)

#.. example 3: sine — signed / net area over [0, 2π] vs [0, π]
f <- function(x) sin(x)
F_antideriv <- function(x) -cos(x)

g_ftc(f,
      F_antideriv,
      x2 = 2 * pi)

g_ftc(f,
      F_antideriv,
      x2 = pi)

#.. example 4: standard normal P(-1 < Z < 1) ≈ 0.68
f <- function(x) dnorm(x,
                       mean = 0,
                       sd = 1)
F_antideriv <- function(x) pnorm(x,
                                 mean = 0,
                                 sd = 1)

g_ftc(f,
      F_antideriv,
      x1 = -1,
      x2 = 1,
      lim_x = c(-3, 3))

#.. example 5: heights N(170, 10), P(160 < X < 180)
f <- function(x) dnorm(x,
                       mean = 170,
                       sd = 10)
F_antideriv <- function(x) pnorm(x,
                                 mean = 170,
                                 sd = 10)

g_ftc(f,
      F_antideriv,
      x1 = 160,
      x2 = 180,
      lim_x = c(150, 190))

par(oldpar)
message("PASS 13_teorema_fundamental_calculo")
