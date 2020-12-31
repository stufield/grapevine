#' Grapes of Wrath
#'
#' Commonly referred to as "binary operators", functions that have a left and
#' right side are typically defined using `%%` symbols. Thus the colloquial
#' term "grapes". The functions below represent a growing list of useful
#' binary operators that come in handy when working in an R environment.
#'
#' @name grapes
NULL

#' @describeIn grapes A friendly version of `!x %in% y`.
#' @export
`%!in%` <- function(x, y) {
  !x %in% y
}

#' @describeIn grapes A friendly version of [ifelse()]
#' @export
`%||%` <- function(x, y) {
  if ( is.null(x) || length(x) <= 0 ) {
    y
  } else {
    x
  }
}

#' @describeIn grapes test equality of R objects
#' @export
`%==%` <- function(x, y) {
  isTRUE(all.equal(x, y, check.attributes = FALSE))
}

#' @describeIn grapes Test identical of R objects
#' @export
`%===%` <- function(x, y) {
  identical(x, y)
}

#' @describeIn grapes easily test inequality of R objects
#' @export
`%!=%` <- function(x, y) {
  !identical(x, y)
}

#' @describeIn grapes alias for `x[x %in% y]`.
#' @export
`%$%` <- function(x, y) {
  x[ x %in% y ]
}

#' @describeIn grapes alias for `x[!x %in% y]`.
#' @export
`%!$%` <- function(x, y) {
  x[ !x %in% y ]
}
