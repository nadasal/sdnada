context("Correct Result Factors")

test_that("Checks to see if right results are generated", {
	a <- c(1, 1)
	b <- c(0, 0, 0)
	c <- c(0.5, 0.5)
	d <- c(1, 1, 3, 3)
	e <- c(-1, -1, -3, -3)

	expect_identical(standard_error(a), 0)
	expect_identical(standard_error(b), 0)
	expect_identical(standard_error(c), 0)
	expect_identical(standard_error(d), 0.5)
	expect_identical(standard_error(e), 0.5)

})
