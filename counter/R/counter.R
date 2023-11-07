#' Counts Data Points in Data Frame Group
#'
#' @param df A dataframe with different groups.
#' @param group_var The group of interest.
#'
#' @return A tibble.
#' @import devtools dplyr datateachr
#' @export
#'
#' @examples
#' counter(mtcars, disp )
#' counter(faithful, eruptions )
#' counter(faithful, waiting)
counter <- function(df, group_var) {
     df |>
    group_by({{ group_var }}) |>
    summarise(n = n())}

