set.seed(858)

options(
  digits = 3,
  dplyr.print_max = 6,
  dplyr.print_min = 6
)

knitr::opts_chunk$set(
  cache = TRUE,
  collapse = TRUE,
  comment = "#>",
  fig.align = 'center',
  fig.asp = 0.618,  # 1 / phi
  fig.show = "hold"
)

image_dpi <- 125

label_model_line <- function(error_metric, a_0, a_1) {
  str_glue("{error_metric}\na_0 = {round(a_0, 2)}\na_1 = {round(a_1, 2)}")
}


