**NOTE: This is a toy package created for MDS 524 for lab purposes. It is not meant to be terribly useful in its current form.**

# sdnada

This package contains functions for statistical calculations. More specifically, this package contains a contrived function that computes the standard deviation of a numeric vector.

## Installation

```
devtools::install_github("nadasal/sdnada", host = "github.ubc.ca/api/v3", auth_token = "cba2bed9999e283b652f5bcb02402634123ba9c6")

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
