Continued fractions in R
================

<!-- README.md is generated from README.Rmd. Please edit that file -->

<img src="man/figures/contfrac.png" width = "150" align="right" />

<!-- badges: start -->

[![Build
Status](https://travis-ci.org/RobinHankin/contfrac.svg?branch=master)](https://travis-ci.org/RobinHankin/contfrac)
[![CRAN\_Status\_Badge](https://www.r-pkg.org/badges/version/contfrac)](https://cran.r-project.org/package=contfrac)
[![Rdoc](http://www.rdocumentation.org/badges/version/contfrac)](http://www.rdocumentation.org/packages/contfrac)
<!-- badges: end -->

# Continued fractions

A continued fraction is an expression of the form

![a\_0 +\\frac{1}{a\_1+\\frac{1}{a\_2+\\frac{1}{\\ddots}}}=
a\_0+\\frac{1}{a\_1+}\\, \\frac{1}{a\_2+}\\ldots](https://latex.codecogs.com/png.latex?a_0%20%2B%5Cfrac%7B1%7D%7Ba_1%2B%5Cfrac%7B1%7D%7Ba_2%2B%5Cfrac%7B1%7D%7B%5Cddots%7D%7D%7D%3D%0Aa_0%2B%5Cfrac%7B1%7D%7Ba_1%2B%7D%5C%2C%20%5Cfrac%7B1%7D%7Ba_2%2B%7D%5Cldots "a_0 +\frac{1}{a_1+\frac{1}{a_2+\frac{1}{\ddots}}}=
a_0+\frac{1}{a_1+}\, \frac{1}{a_2+}\ldots")

Such expressions are interesting and useful in a number of mathematical
applications. A *generalized* continued fraction is an expression of the
form

![b\_0 +\\frac{a\_1}{b\_1+\\frac{a\_2}{b\_2+\\frac{a\_3}{b\_3+\\ddots}}}
= b\_0+\\frac{a\_1}{b\_1+}\\, \\frac{a\_2}{b\_2+} \\frac{a\_3}{b\_3+}\\ldots](https://latex.codecogs.com/png.latex?b_0%20%2B%5Cfrac%7Ba_1%7D%7Bb_1%2B%5Cfrac%7Ba_2%7D%7Bb_2%2B%5Cfrac%7Ba_3%7D%7Bb_3%2B%5Cddots%7D%7D%7D%0A%3D%20b_0%2B%5Cfrac%7Ba_1%7D%7Bb_1%2B%7D%5C%2C%20%5Cfrac%7Ba_2%7D%7Bb_2%2B%7D%20%5Cfrac%7Ba_3%7D%7Bb_3%2B%7D%5Cldots "b_0 +\frac{a_1}{b_1+\frac{a_2}{b_2+\frac{a_3}{b_3+\ddots}}}
= b_0+\frac{a_1}{b_1+}\, \frac{a_2}{b_2+} \frac{a_3}{b_3+}\ldots")

The contfrac package provides functionality to deal with both these.

## Installation

To install the most recent stable version on CRAN, use
`install.packages()` at the R prompt:

`R> install.packages("contfrac")`

And then to load the package use `library()`:

``` r
library("contfrac")
```

## Package features

The package provides functionality for dealing with continued fractions.

``` r
as_cf(pi,n=7)   # convert pi to continued fraction form
#> [1]   3   7  15   1 292   1   1
```

We can evaluate convergents of any sequence using `convergents()` or
`nconv()`:

``` r
convergents(1:8)
#> $A
#> [1]     1     3    10    43   225  1393  9976 81201
#> 
#> $B
#> [1]     1     2     7    30   157   972  6961 56660
nconv(1:8)
#> [1] 1.433127
```

The package uses standard IEEE arithmetic so is not reliable past a
certain point, shown here by expanding the golden ratio:

``` r
as_cf((1+sqrt(5))/2,n=50)
#>  [1] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
#> [39] 2 2 1 8 2 2 2 3 2 1 2 3
```

## Further information

For more details, and some discussion of the mathematics of continued
fractions, see the package vignette.
