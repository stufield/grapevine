
<!-- README.md is generated from README.Rmd. Please edit that file -->
<!-- badges: start -->

![GitHub
version](https://img.shields.io/badge/Version-0.0.0.9000-success.svg?style=flat&logo=github)
[![CRAN
status](http://www.r-pkg.org/badges/version/helpr)](https://cran.r-project.org/package=helpr)
[![R-CMD-check](https://github.com/stufield/helpr/workflows/R-CMD-check/badge.svg)](https://github.com/stufield/helpr/actions)
[![](https://cranlogs.r-pkg.org/badges/grand-total/helpr)](https://cran.r-project.org/package=helpr)
[![Codecov test
coverage](https://codecov.io/gh/stufield/helpr/branch/main/graph/badge.svg)](https://app.codecov.io/gh/stufield/helpr?branch=main)
[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
[![License:
MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://choosealicense.com/licenses/mit/)
<!-- badges: end -->

# The `grapevine` package

Commonly referred to as “binary operators”, functions that have a left
and right side are typically defined using `%%` symbols. Thus the
colloquial term “grapevine”. The functions below represent a growing
list of useful binary operators that come in handy when working in an R
environment.

## Installation

To install the latest `development` version of `grapevine` from
**GitHub**, first install the
[devtools](https://CRAN.R-project.org/package=devtools) package and run:

``` r
# current dev version
remotes::install_github("stufield/grapevine")

# or a specific version
remotes::install_github("stufield/grapevine@v0.0.1")
```

## Functions

- `%||%`
- `%@@%`
- `%@@%<-`
- `%==%`
- `%!=%`
- `%===%`
- `%set%`
- `%!set%`
- `%[[%`
- `%null%`
- `%!in%`
