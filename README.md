# cpm: Change Point Model

Sequential and batch change detection for univariate data streams, using the change point model framework. Functions are provided to allow nonparametric distribution-free change detection in the mean, variance, or general distribution of a given sequence of observations. Parametric change detection methods are also provided for Gaussian, Bernoulli and Exponential sequences. Both the batch (Phase I) and sequential (Phase II) settings are supported, and the sequences may contain either a single or multiple change points.

[![R build status](https://github.com/Quentin62/cpm/workflows/R-CMD-check/badge.svg)](https://github.com/Quentin62/cpm/actions)

This is an unofficial repository. The official version is available on the [CRAN repository](https://cran.r-project.org/package=cpm). 

## Installation

``` r
library(remotes)
install_github("Quentin62/cpm", build_vignettes = TRUE)
```

## Credits

The **cpm** package is developed by Gordon J. Ross <gordon@gordonjross.co.uk> and distributed under the GPL-3 licence.

## Reference

Gordon J. Ross (2015)., "Parametric and Nonparametric Sequential Change Detection in R: The cpm Package.", Journal of Statistical Software, 66(3), 1-20., https://www.jstatsoft.org/v66/i03/.
