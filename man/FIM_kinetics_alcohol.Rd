% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{FIM_kinetics_alcohol}
\alias{FIM_kinetics_alcohol}
\title{Fisher Information Matrix for the Alcohol-Kinetics Model}
\usage{
FIM_kinetics_alcohol(x1, x2, w, param)
}
\arguments{
\item{x1}{Vector of design points (first dimension).}

\item{x2}{Vector of design points (second dimension).}

\item{w}{Vector of design weight. Its length must be equal to the length of \code{x} and \code{sum(w) = 1}.}

\item{param}{Vector of values for the model parameters \code{c(b1, b2, b3)}.}
}
\value{
Fisher information matrix.
}
\description{
It provides the cpp function for FIM for the model \code{~(b3 * x1)/(1 + b1 * x1 + b2 * x2)}
}
