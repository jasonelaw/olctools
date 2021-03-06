% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{validate_olc}
\alias{olc_validate}
\alias{validate_full}
\alias{validate_olc}
\alias{validate_short}
\title{Check the Validity of Open Location Codes}
\usage{
validate_olc(codes)

validate_short(codes)

validate_full(codes)
}
\arguments{
\item{codes}{a character vector containing Open Location Codes.}
}
\value{
a vector of TRUE and FALSE values, where TRUE corresponds to a
valid code and FALSE an invalid.
}
\description{
These functions allow a useR to check whether OLCs they've
been provided are valid or not. \code{valid_short} identifies whether
a vector of OLCs are valid "short" codes; \code{valid_long} identifies
whether OLCs are valid "long" codes, and \code{valid_full} identifies
whether OLCs are valid, full stop.
}
\examples{
#Validate that a particular OLC is valid
validate_olc("WC2345+G6g")
#[1] TRUE

#It is! Is it a short?
validate_short("WC2345+G6g")
#[1] TRUE
#Yep!

#So it's not full?
validate_full("WC2345+G6g")
#[1] FALSE
#Nope!
}
\seealso{
\code{\link{decode_olc}} and \code{\link{encode_olc}} for creating
and resolving valid Open Location Codes.
}

