#' @title ICAOD: Finding Optimal Designs for Nonlinear Models
#'
#' @description Different functions are available to find optimal designs for nonlinear models.
#' The user should choose either of them based on her/his strategy to deal with
#' the unknown model parameters:
#' :
#'\itemize{
#'  \item{\code{\link{locally}}: }{finds locally D-optimal designs. A vector of initial estimates or guess is available for the vector of model parameters.}
#'  \item{\code{\link{robust}}: }{finds robust optimal designs or optimal designs in average. Some (weighted) vector of initial estimates are available for the vector of unknown model parameters (discrete prior).}
#'  \item{\code{\link{bayes}}: }{finds Bayesian D-optimal designs. A continuous prior is available for the vector of unknown model parameters.}
#'  \item{\code{\link{minimax}}: }{finds minimax and standardized maximin D-optimal designs. Each of the unknown model parameters belong to an user-specified interval. The purpose is to find a design that protects the user against the worst scenario over the parameter space.
#'  Standardized designs should be used when locally optimal design of the model of interest has analytical solution.}
#'}
#'
#' There are also some functions to find optimal designs for special problems or models:
#'\itemize{
#'  \item{\code{\link{multiple}}: }{finds locally multiple objective optimal designs for the 4-parameter Hill model. It uses the same strategy as the function \code{locally} to deal with the unknown model parameters.}
#'  \item{\code{\link{bayescomp}}: }{finds a design that that meets the dual goal of the parameter estimation and
#'   increasing the probability of a particular outcome in a binary response  model.  It uses the same strategy as the function \code{bayes} to deal with the unknown mode parameters.}
#'}
#'@details
#'
#' The optimization of the outer problem (over the design space) is done using a metaheuristic  algorithm called
#' imperialist competitive algorithm (ICA). The user can always adjust its tuning parameters
#' through the function \code{\link{ICA.control}}. Based on our experience,
#' the most important parameter here is the number of countries, equivalent to
#' the number of particles in the PSO algorithm and that can be regulated via the argument \code{ncount}.
#'
#' Depending on the strategy dealing with the unknown model parameters,
#' each type of optimal design problem may have an inner problem.
#'  Given a known design (support points and weights), the inner problems is:
#'
#' \itemize{
#'  \item{\code{\link{locally}}: }{equivalent to a simple function (criterion) evaluation at the vector of initial estimates of the vector of  model parameters.}
#'  \item{\code{\link{robust}}: }{equivalent to a weighted some of function (criterion) evaluations at the vectors of initial estimates of  the model parameters.}
#'  \item{\code{\link{bayes}}: }{equivalent to an integral approximation over the multiple prior distribution of the unknown model parameters (by function \code{\link[cubature]{hcubature}}).
#'  The integration tuning parameters can be adjusted by the function \code{crt.bayes.control}. The most important ones are \code{maxEval} and \code{tol}.}
#'  \item{\code{\link{bayes}}: }{equivalent to an optimization problem over the parameter space that is the cartesian product of some intervals for the model unknown parameters  (by function \code{\link[nloptr]{nloptr}}).
#'  The optimization tuning parameters can be regulated by the function \code{crt.minimax.control}.  The most important tuning parameter is \code{maxeval}.
#'  The convergence of the algorithm for minimax and standardized maximin designs requires solving global multi-optima optimization
#' problems over the parameter space. Therefore, the parameter \code{maxeval} plays a very important role to avoid getting trapped in the local optima of the inner problem.}
#'}

#' The functions \code{\link{locally}} and \code{\link{robust}} are very easy to be applied and
#' they are usually fast. The speed of the functions \code{\link{bayes}} and \code{\link{minimax}}
#' considerably depends on the value of the tuning parameters.
#'
#'
#' Because the output design in this package is always an \strong{approximate} or \strong{continuous} design,
#'  the general equivalence theorem may be used to assess the proximity of the design
#'  to the true-optimal design based on derivative plot and efficiency lower bound.
#'
#' For each type of design,
#' the user can use the following functions to verify the optimality of her/his output design:
#'
#' \itemize{
#' \item{\code{\link{senslocally}}}
#' \item{\code{\link{sensrobust}}}
#' \item{\code{\link{sensbayes}}}
#' \item{\code{\link{sensminimax}}}
#'  \item{\code{\link{sensmultiple}}}
#'  \item{\code{\link{sensbayescomp}}}
#' }
#'
#' @references
#' Masoudi E, Holling H, Wong W.K. (2017). Application of Imperialist Competitive Algorithm to Find Minimax and Standardized Maximin Optimal Designs. Computational Statistics and Data Analysis, 113, 330-345. <doi:10.1016/j.csda.2016.06.014>
#' @docType package
#' @name ICAOD
NULL