
<!-- README.md is generated from README.Rmd. Please edit that file -->

[![Travis Build
Status](https://travis-ci.org/stufield/grapevine.svg?branch=master)](https://travis-ci.org/stufield/grapevine)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/github/stufield/grapevine?branch=master&svg=true)](https://ci.appveyor.com/project/stufield/grapevine)
[![CRAN\_Status](http://www.r-pkg.org/badges/version/grapevine)](https://cran.r-project.org/package=grapevine)
[![codecov](https://codecov.io/gh/stufield/grapevine/branch/master/graph/badge.svg)](https://codecov.io/gh/stufield/grapevine)

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
devtools::install_github("stufield/grapevine", build = TRUE)
```

If you specify a tag, you can install a GitHub release.

``` r
devtools::install_github("stufield/grapevine@v0.0.1", build = TRUE)
```

## Functions

-   `%||%`
-   `%@@%`
-   `%@@%<-`
-   `%==%`
-   `%!=%`
-   `%===%`
-   `%set%`
-   `%!set%`
-   `%[[%`
-   `%null%`
-   `%!in%`

## LICENSE

This package (suite of programs) is free software; you can redistribute
it and/or modify it under the terms of the MIT License. See please see
the [LICENSE](LICENSE). By using in this package you agree to abide by
its terms.

------------------------------------------------------------------------

Created by [Rmarkdown](https://github.com/rstudio/rmarkdown) (v2.8) and
R version 4.1.0 (2021-05-18).
