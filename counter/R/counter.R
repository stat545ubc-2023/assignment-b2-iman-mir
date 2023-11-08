#' Counts Data Points in Data Frame Group
#'
#' @param df A dataframe with different groups.
#' @param group_var The group of interest.
#'
#' @return A tibble.
#' @import devtools dplyr
#' @export
#'
#' @examples
#' counter(mtcars, disp )
#' counter(faithful, eruptions )
#' counter(faithful, waiting)
counter <- function(df, group_var) {
    df %>%
    dplyr::group_by({{ group_var }})  %>%
    dplyr::summarise(n = n())}

