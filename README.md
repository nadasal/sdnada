
[![Build Status](https://travis-ci.org/nadasal/sdnada.svg?branch=master)](https://travis-ci.org/nadasal/sdnada)

**NOTE: This is a toy package created for the purpose going through the package creation process. It is not meant to be terribly useful in its current form. Includes a vignette, license, tests, and a build status.**

# sdnada

This package contains functions for statistical calculations. More specifically, this package contains contrived functions that compute the standard deviation and standard error of a numeric vector.

## Installation



```
devtools::install_github("nadasal/sdnada")

```

## Quick Demo

```

library(sdnada)

```

calculating the standard deviation using `standard_deviation()`:

```

x <- standard_deviation(c(1, 2, 3, 4))

print(x)

#> [1] 1.118034

```

```

y <- standard_deviation(c(1.7, 5.4, 9.6, 4.8))

print(y)

#> [1] 2.814583

```

calculating the standard deviation using `standard_error()`:

```

x <- standard_error(c(1, 1, 3, 3))

print(x)

#> [1] 0.5

```

```

y <- standard_error(c(1.7, 5.4, 9.6, 4.8))

print(y)

#> [1] 1.407291

```
