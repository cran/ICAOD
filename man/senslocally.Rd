% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/3-UserMinimaxFunctions.R
\name{senslocally}
\alias{senslocally}
\title{Verifying Optimality of The Locally D-optimal Designs}
\usage{
senslocally(
  formula,
  predvars,
  parvars,
  family = gaussian(),
  x,
  w,
  lx,
  ux,
  inipars,
  fimfunc = NULL,
  sens.control = list(),
  calculate_criterion = TRUE,
  plot_3d = c("lattice", "rgl"),
  plot_sens = TRUE,
  npar = length(inipars),
  silent = FALSE,
  crtfunc = NULL,
  sensfunc = NULL
)
}
\arguments{
\item{formula}{A linear or nonlinear model \code{\link[stats]{formula}}.
A symbolic description of the model consists of predictors and the unknown model parameters.
Will be coerced to a \code{\link[stats]{formula}} if necessary.}

\item{predvars}{A vector of characters. Denotes the predictors in the \code{\link[stats]{formula}}.}

\item{parvars}{A vector of characters. Denotes the unknown parameters in the \code{\link[stats]{formula}}.}

\item{family}{A description of the response distribution and the link function to be used in the model.
This can be a family function, a call to a family function or a character string naming the family.
 Every family function has a link argument allowing to specify the link function to be applied on the response variable.
  If not specified, default links are used. For details see \code{\link[stats]{family}}.
   By default, a linear gaussian model \code{gaussian()} is applied.}

\item{x}{Vector of the design (support) points. See 'Details' of \code{\link{sensminimax}} for models with more than one predictors.}

\item{w}{Vector of the corresponding design weights for \code{x}.}

\item{lx}{Vector of lower bounds for the predictors. Should be in the same order as \code{predvars}.}

\item{ux}{Vector of upper bounds for the predictors. Should be in the same order as \code{predvars}.}

\item{inipars}{A vector of initial estimates for the unknown parameters.
It must match \code{parvars} or the argument \code{param} of the function \code{fimfunc}, when provided.}

\item{fimfunc}{A function. Returns the FIM as a \code{matrix}. Required when \code{formula} is missing. See 'Details' of \code{\link{minimax}}.}

\item{sens.control}{Control Parameters for Calculating the ELB. For details, see \code{\link{sens.control}}.}

\item{calculate_criterion}{Calculate the optimality criterion? See 'Details' of \code{\link{sensminimax}}.}

\item{plot_3d}{Which package should be used to plot the sensitivity (derivative) function for models with two predictors.
Either \code{"rgl"} or \code{"lattice"} (default).}

\item{plot_sens}{Plot the sensitivity (derivative) function? Defaults to \code{TRUE}.}

\item{npar}{Number of model parameters.  Used when \code{fimfunc} is given instead of \code{formula} to specify the number of model parameters.
If not given, the sensitivity plot may be shifted below the y-axis.
When \code{NULL}, it is set to \code{length(inipars)}.}

\item{silent}{Do not print anything? Defaults to \code{FALSE}.}

\item{crtfunc}{(Optional) a function that specifies an arbitrary criterion. It must have especial arguments and output. See 'Details' of \code{\link{minimax}}.}

\item{sensfunc}{(Optional) a function that specifies the sensitivity function for \code{crtfunc}. See 'Details' of \code{\link{minimax}}.}
}
\value{
an object of class \code{sensminimax} that is a list with the following elements:
 \describe{
 \item{\code{type}}{Argument \code{type} that is required for print methods.}
 \item{\code{optima}}{A \code{matrix} that stores all the local optima over the parameter space.
  The cost  (criterion) values are stored in a column named \code{Criterion_Value}.
 The last column (\code{Answering_Set})
  shows if the optimum belongs to the answering set (1) or not (0). See 'Details' of \code{\link{sens.minimax.control}}.
   Only applicable for minimax or standardized maximin designs.}
 \item{\code{mu}}{Probability measure on the answering set.
  Corresponds to the rows of \code{optima} for which the associated row in column \code{Answering_Set} is equal to 1.
   Only applicable for minimax or standardized maximin designs.}
 \item{\code{max_deriv}}{Global maximum of the sensitivity (derivative) function (\eqn{\epsilon} in 'Details').}
 \item{\code{ELB}}{D-efficiency lower bound. Can not be larger than 1. If negative, see 'Note' in \code{\link{sensminimax}} or  \code{\link{sens.minimax.control}}.}
 \item{\code{merge_tol}}{Merging tolerance to create the answering set from the set of all local optima. See 'Details' in \code{\link{sens.minimax.control}}.
  Only applicable for minimax or standardized maximin designs.}
 \item{\code{crtval}}{Criterion value. Compare it with the column \code{Crtiterion_Value} in \code{optima} for minimax and standardized maximin designs.}
 \item{\code{time}}{Used CPU time (rough approximation).}
 }
}
\description{
It plots the sensitivity (derivative) function of the
 locally D-optimal criterion
at a given approximate (continuous) design and also
 calculates its efficiency lower bound (ELB) with respect
to the optimality criterion.
For an approximate (continuous) design, when the design space is one or two-dimensional,
 the user can visually verify the optimality of the design by observing the
sensitivity plot. Furthermore, the proximity of the design to the optimal design
 can be measured by the  ELB without knowing the latter.
 See, for more details, Masoudi et al. (2017).
}
\details{
Let \eqn{\theta_0} denotes the vector of initial estimates for the unknown parameters.
A design \eqn{\xi^*}{\xi*} is locally D-optimal among all designs on \eqn{\chi} if and only if
 the following inequality holds for all \eqn{\boldsymbol{x} \in \chi}{x belong to \chi}
        \deqn{c(\boldsymbol{x}, \xi^*, \theta_0) =  tr M^{-1}(\xi^*, \theta_0)I(\boldsymbol{x}, \theta_0)-p \leq 0,}{
         c(x, \xi*, \theta_0) =  tr M^-1(\xi*, \theta0)I(x, \theta_0)-p <= 0,}
          with equality at all support points of \eqn{\xi^*}{\xi*}.
           Here, \eqn{p} is the number of model parameters.
            \eqn{c(\boldsymbol{x},\xi^*, \theta_0)}{c(x,\xi*, \theta_0)} is called \strong{sensitivity} or \strong{derivative} function.

ELB is a measure of  proximity of a design to the optimal design without knowing the latter.
Given a design, let \eqn{\epsilon} be the global maximum
 of the sensitivity (derivative) function over \eqn{x \in \chi}{x belong to \chi}.
ELB is given by \deqn{ELB = p/(p + \epsilon),}
where \eqn{p} is the number of model parameters. Obviously,
calculating ELB requires finding \eqn{\epsilon} and
another optimization problem to be solved.
The tuning parameters of this optimization can be regulated via the argument  \code{\link{sens.minimax.control}}.
See, for more details, Masoudi et al. (2017).
}
\note{
Theoretically, ELB can not be larger than 1. But if so, it may have one of the following reasons:
\itemize{
\item \code{max_deriv} is not a GLOBAL maximum.  Please increase  the value of the parameter \code{maxeval} in \code{\link{sens.minimax.control}} to find the global maximum.
\item The sensitivity function is shifted below the y-axis because
the number of model parameters has not been specified correctly (less value given).
Please specify the correct number of model parameters via the argument \code{npar}.
}
}
\examples{
############################
# Exponential growth model
############################
# Verifying optimailty of a locally D-optimal design
senslocally(formula = ~a + exp(-b*x),
            predvars = "x", parvars = c("a", "b"),
            x = c(.1, 1), w = c(.5, .5),
            lx = 0, ux = 1, inipars = c(1, 10))


##############################
# A model with two predictors
##############################
x0 <- c(30, 3.861406, 30, 4.600633, 0, 0, 5.111376, 4.168798)
w0 <- rep(.25, 4)
senslocally(formula =  ~ V*S/(Km * (1 + I/Kic)+ S * (1 + I/Kiu)),
            predvars = c("S", "I"),
            parvars = c("V", "Km", "Kic", "Kiu"),
            x = x0, w = w0,
            lx = c(0, 0), ux = c(30, 60),
            inipars = c(1.5, 5.2, 3.4, 5.6))
\dontrun{
  # using package rgl for 3d plot:
  res<- senslocally(formula =  ~ V*S/(Km * (1 + I/Kic)+ S * (1 + I/Kiu)),
                    predvars = c("S", "I"),
                    parvars = c("V", "Km", "Kic", "Kiu"),
                    x = x0, w = w0,
                    lx = c(0, 0), ux = c(30, 60),
                    inipars = c(1.5, 5.2, 3.4, 5.6),
                    plot_3d = "rgl")

}

###################################
# user-defined optimality criterion
##################################
# When the model is defined by the formula interface
# Checking the A-optimality  for the 2PL model.
# the criterion function must have argument x, w fimfunc and the parameters defined in 'parvars'.
# use 'fimfunc' as a function of the design points x,  design weights w and
#  the 'parvars' parameters whenever needed.
Aopt <-function(x, w, a, b, fimfunc){
  sum(diag(solve(fimfunc(x = x, w = w, a = a, b = b))))
}
## the sensitivtiy function
# xi_x is a design that put all its mass on x in the definition of the sensitivity function
# x is a vector of design points
Aopt_sens <- function(xi_x, x, w, a, b, fimfunc){
  fim <- fimfunc(x = x, w = w, a = a, b = b)
  M_inv <- solve(fim)
  M_x <- fimfunc(x = xi_x, w = 1, a  = a, b = b)
  sum(diag(M_inv \%*\% M_x \%*\%  M_inv)) - sum(diag(M_inv))
}

senslocally(formula = ~1/(1 + exp(-b * (x-a))), predvars = "x",
            parvars = c("a", "b"), family = "binomial",
            inipars = c(0, 1.5),
            crtfunc = Aopt,
            lx = -2, ux = 2,
            sensfunc = Aopt_sens,
            x = c(-1,  1), w = c(.5, .5))
# not optimal
}
\references{
Masoudi E, Holling H, Wong W.K. (2017). Application of Imperialist Competitive Algorithm to Find Minimax and Standardized Maximin Optimal Designs. Computational Statistics and Data Analysis, 113, 330-345. \cr
}
