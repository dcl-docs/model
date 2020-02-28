set.seed(858)

options(
  digits = 3,
  dplyr.print_max = 6,
  dplyr.print_min = 6
)

knitr::opts_chunk$set(
  # collapse = TRUE,
  comment = "#>",
  fig.align = 'center',
  fig.asp = 0.618,  # 1 / phi
  fig.show = "hold"
)

image_dpi <- 125

label_model_line <- function(error_metric, a_0, a_1) {
  str_glue("{error_metric}\na_0 = {round(a_0, 2)}\na_1 = {round(a_1, 2)}")
}

annotate_model <- function(x, y, error_metric = "RMSE", model) {
  annotate(
    geom = "label",
    x = x,
    y = y,
    label = 
      label_model_line(
        error_metric = error_metric, 
        a_0 = coef(model)[[1]], 
        a_1 = coef(model)[[2]]
      ),
    hjust = 0
  ) 
}



