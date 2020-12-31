#' The Grapevine
#'
#' Commonly referred to as "binary operators", functions that have a left and
#' right side are typically defined using `%%` symbols. Thus the colloquial
#' term "grapes". The functions below represent a growing list of useful
#' binary operators that come in handy when working in an R environment.
#'
#' @param x,y The left and right hand side of the grape bunch (binary operator).
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

#' @describeIn grapes If `x = NULL` or `x = ""`, return `NULL`, otherwise `y`.
#' @export
`%null%` <- function(x, y) {
  if ( length(x) <= 0 || x == "" ) {
    NULL
  } else {
    y
  }
}

#' @describeIn grapes Test equality of 2 R objects, minus the attributes.
#' @export
`%==%` <- function(x, y) {
  isTRUE(all.equal(x, y, check.attributes = FALSE))
}

#' @describeIn grapes Test absolute equality of 2 R objects.
#' @export
`%===%` <- function(x, y) {
  identical(x, y)
}

#' @describeIn grapes Test absolute inequalit of 2 R objects
#' @export
`%!=%` <- function(x, y) {
  !identical(x, y)
}

#' @describeIn grapes Shorthand alias for `x[x %in% y]`.
#' @export
`%$%` <- function(x, y) {
  x[ x %in% y ]
}

#' @describeIn grapes Shorthand alias for `x[!x %in% y]`, i.e. `setdiff(x, y)`.
#' @export
`%!$%` <- function(x, y) {
  x[ !x %in% y ]
}
