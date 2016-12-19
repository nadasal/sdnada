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
	if(!is.integer(x) & !is.factor(x) & !is.double(x) & length(x) != 0){
		return(stop("invalid 'type' of argument"))
	}
	if(any(is.na(x)) == TRUE){
		warning("NAs removed from calculation")
		x <- x[!is.na(x)]
	}
	n <- length(x)
	if(length(x) == 0){
		warning("Length cannot be zero: NAs introduced by coercion")
		n <- NA
	}
	n <- length(x)
	if(length(x) == 1){
		warning("Input must be a list of multiple integers/doubles: NAs introduced by coercion")
		n <- NA
	}
	mean = sum(x)/n
	ssq <- sum((x-mean)^2)
	stddev = sqrt(ssq/n)
	return(stddev)
}

#' Standard Error
#'
#' This contrived function computes the standard error of the values in x.
#' @usage standard_error(x)
#' @param x a numeric vector
#'
#' @return numeric
#' @export
#'
#' @examples standard_error(c(1, 7, 3.7, 2, 0.3))

standard_error <- function(x) {
	if(any(is.na(x)) == TRUE){
		warning("NAs removed from calculation")
		x <- x[!is.na(x)]
	}
	standard_deviation(x)/sqrt(length(x))
}
