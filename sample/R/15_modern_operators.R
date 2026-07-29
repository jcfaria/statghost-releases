# Objective: Tour modern R operators (base pipe / lambda / raw / placeholder → magrittr).
# Needs: R >= 4.1 for |> and \( ); R >= 4.2 for _ ; magrittr (auto-install).
# One blank-delimited block per operator — Arm whole file or one block.

# --- base: native pipe |> ---
1:5 |> sum()

# --- base: |> + anonymous \(x) ---
1:5 |> (\(x) mean(x) + sd(x))()

# --- base: \(x) shorthand function ---
f <- \(x, y = 1) x + y
f(10, 2)

# --- base: raw string r"(...)" ---
raw <- r"(path\with\backslashes)"
nchar(raw) > 0

# --- base: :: namespace ---
base::mean(1:4)

# --- base: |> with _ placeholder (R >= 4.2; else skip) ---
if (getRversion() >= "4.2.0") {
  mtcars |> head(x = _, n = 2)
} else {
  message("SKIP |> _ placeholder (need R >= 4.2)")
}

# --- magrittr: %>% ---
if (!requireNamespace("magrittr", quietly = TRUE))
  install.packages("magrittr", repos = "https://cloud.r-project.org")
library(magrittr)
1:10 %>% mean

# --- magrittr: . pronoun ---
1:10 %>% magrittr::multiply_by(2) %>% mean()

# --- magrittr: %T>% tee (side effect, then pass through) ---
1:5 %T>% print() %>% sum()

# --- magrittr: %$% exposition ---
mtcars %$% cor(mpg, wt)

# --- magrittr: %<>% compound assignment ---
x <- 1:5
x %<>% magrittr::multiply_by(10)
x
