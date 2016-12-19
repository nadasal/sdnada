context("Correct Result Factors")

a <- c()
b <- c(1)
c <- c('hello', 'goodbye')
d <- c(1, 2, 'hello')
e <- c(1, 2, NA)
f <- c(1, 2, NaN)
g <- c(1, 1, 3, 3)
h <- c(0.5, 0.5)
i <- c(-1, -1, -3, -3)
j <- c(-0.5, -0.5)
k <- c(-1, -1, 3, 3)
l <- c(1, 1, 0.5, 0.5)
m <- c(-1, 1, -0.5, 0.5)
n <- c(0, 0, 0, 0)


test_that("Warning generated with empty list", {
	
	expect_warning(standard_error(a), "Length cannot be zero: NAs introduced by coercion")
	
})

test_that("Warning generated with single numeric input", {
	
	expect_warning(standard_error(b), "Input must be a list of multiple integers/doubles: NAs introduced by coercion")
	
})


test_that("Error generated with non-numeric input", {
	
	expect_error(standard_error(c), "invalid 'type' of argument")
	expect_error(standard_error(d), "invalid 'type' of argument")
	
	
})

test_that("Correct positive outputs for +/- intergers/floats", {
	
	expect_equal(standard_error(g), 0.5)
	expect_equal(standard_error(h), 0)
	expect_equal(standard_error(i), 0.5)
	expect_equal(standard_error(j), 0)
	
})


test_that("Correct positive outputs mixed numeric inputs", {
	
	expect_equal(standard_error(k), 1)
	expect_equal(standard_error(l), 0.125)
	expect_equal(standard_error(m), 0.3952847)
	
})


test_that("Zero output for list of zeros", {
	
	expect_equal(standard_error(n), 0)
	
})