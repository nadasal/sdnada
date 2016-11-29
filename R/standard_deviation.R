#' Standard Deviation
#'
#' This contrived function computes the standard deviation of the values in x.
#' @usage standard_deviation(x)
#' @param x a numeric vector
#'
#' @return numeric
#' @export
#'
#' @examples standard_deviation(c(1, 7, 3.7, 2, 0.3))

standard_deviation <- function(x) {
	n <- length(x)
	mean = sum(x) / n
	ssq <- sum((x-mean)^2)
	stddev = sqrt(ssq/n)
	return(stddev)
}
