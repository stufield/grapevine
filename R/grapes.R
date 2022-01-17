#' The Grapevine
#'
#' Commonly referred to as "binary" or "infix" operators, functions that have
#' a left and right side are typically defined using `%%` symbols.
#' Thus the colloquial term "grapes".
#' The functions below represent a growing list of useful
#' binary operators that come in handy when working in an R environment.
#'
#' @name grapes
#' @param x The left hand side of the infix operator.
#' @param y The right hand side of the infix operator.
#' @seealso [intersect()], [setdiff()], [all.equal()], [isTRUE()]
#' @examples
#' foo <- NULL
#' foo %||% "bar"     # 'bar'
#' "foo" %||% "bar"   # 'foo'
#'
#' factor(1:3) %@@@@% levels
#' factor(1:3, levels = LETTERS[1:3]) %@@@@% levels
#' mtcars %@@@@% row.names
#'
#' mtcars %==% mtcars       # equal
#' cars2 <- mtcars
#' cars2 %@@@@% a <- "foo"  # attr assignment; with unquoted 'a'
#' mtcars %==% cars2        # attr not checked; TRUE
#' mtcars %===% cars2       # attr checked; FALSE
#'
#' x <- list(a = "b", c = "d", e = "f")
#' x %set% c("a", "c", "d")   # 'c' match
#' x %!set% c("a", "c", "d")  # 'b' match
#' unlist(x) %!set% c("a", "c", "d")   # 'c' match; vector-vector
#'
#' x <- list(a = 1:2, b = 3:4, c = 5:6)
#' x %[[% 2L
#'
#' data.frame(x) %[[% 2L
NULL


# infixes ----

#' @describeIn grapes A friendly version of `!x %in% y`.
#' @export
`%!in%` <- function(x, y) {
  !x %in% y
}

#' @describeIn grapes
#' A friendly version of `if (length(x) == 0) y else x` for `NULL` objects.
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

#' @describeIn grapes A friendly version of `attr(x, y)`. `y` can be unquoted.
#' @export
`%@@%` <- function(x, y) {
  name <- as.character(substitute(y))
  attr(x, which = name, exact = TRUE)
}

#' @describeIn grapes Assign attributes via infix operator.
#' A friendly version of `attr(x, y) <- value`. `y` can be unquoted.
#' @param value New value for attribute `y`.
#' @usage x \%@@@@\% y <- value
#' @export
`%@@%<-` <- function(x, y, value) {
  name <- as.character(substitute(y))
  attr(x, which = name) <- value
  x
}

#' @describeIn grapes A gentler logical test for equality of two objects.
#' Attributes are *not* checked. Use `%===%` to check attributes.
#' @export
`%==%` <- function(x, y) {
  isTRUE(all.equal(x, y, check.attributes = FALSE))
}

#' @describeIn grapes A logical test that two objects are *not* equal.
#' @export
`%!=%` <- function(x, y) {
  !isTRUE(all.equal(x, y, check.attributes = FALSE))
}

#' @describeIn grapes Also tests attributes of `x` and `y`.
#' @export
`%===%` <- function(x, y) {
  isTRUE(all.equal(x, y, check.attributes = TRUE))
}

#' @describeIn grapes Subset values in `x` by `y`. Alias for `x[x %in% y]`.
#' Similar to `intersect(x, y)` except names and class of `x` are maintained.
#' @export
`%set%` <- function(x, y) {
  x[x %in% y]
}

#' @describeIn grapes Subset values in `x` *not* in `y`. Alias for `x[!x %in% y]`.
#' Similar to `setdiff(x, y)` except names and class of `x` are maintained.
#' @export
`%!set%` <- function(x, y) {
  x[!x %in% y]
}

#' @describeIn grapes Extracts the `ith` element for each of `n` elements of
#' a list or data frame, returning either a vector of length `n` or a single
#' row data frame with `n` columns.
#' @export
`%[[%` <- function(x, y) {
  stopifnot(typeof(x) == "list")
  if ( inherits(x, "data.frame") ) {
    z <- lapply(x, `[[`, i = y)
    data.frame(z, check.names = FALSE)
  } else {
    vals <- vapply(x, typeof, "")
    stopifnot(length(unique(vals)) == 1L)  # ensure type stable; no coercion
    unlist(lapply(x, `[[`, i = y))
  }
}
