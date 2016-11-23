context("Correct Result Factors")

test_that("Checks to see if right results are generated", {
	a <- c(1, 1)
	b <- c(0, 0, 0)
	c <- c(0.5, 0.5)
	d <- c(1, 1, 3, 3)
	e <- c(-1, -1, -3, -3)

	expect_identical(standard_deviation(a), 0)
	expect_identical(standard_deviation(b), 0)
	expect_identical(standard_deviation(c), 0)
	expect_identical(standard_deviation(d), 1)
	expect_identical(standard_deviation(e), 1)

})

