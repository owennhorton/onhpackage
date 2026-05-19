#' Scale by max and min
#'
#' @param x A vector of numerical values
#'
#' @returns A vector of numerical values "y" scaled by x's max and min
#' @export
#'
#' @examples
#' min_max_scale(x = c(2, 9, 4, -5, 8, -6))
min_max_scale <- function(x)
{
  checkmate::assert_numeric(x)

  y <- (x - min(x, na.rm = TRUE))/(max(x, na.rm = TRUE) - min(x, na.rm = TRUE))

  return(y)
}
