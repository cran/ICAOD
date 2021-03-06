# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#' @title Fisher Information Matrix for a 2-Parameter Cox Proportional-Hazards Model for Type One Censored Data
#'
#' @description
#' It provides the cpp function for the FIM introduced in  Eq. (3.1) of Schmidt and Schwabe (2015) for type one censored data.
#'
#'
#' @param x Vector of design points.
#' @param w Vector of design weight. Its length must be equal to the length of \code{x} and \code{sum(w) = 1}.
#' @param param Vector of values for the model parameters \eqn{c(\beta_0, \beta_1)}.
#' @param tcensor The experiment is terminated at the fixed time point \code{tcensor}.
#' @return Fisher information matrix.
#' @references Schmidt, D., & Schwabe, R. (2015). On optimal designs for censored data. Metrika, 78(3), 237-257.
#' @export
FIM_2par_exp_censor1 <- function(x, w, param, tcensor) {
    .Call('_ICAOD_FIM_2par_exp_censor1', PACKAGE = 'ICAOD', x, w, param, tcensor)
}

#' @title Fisher Information Matrix for a 2-Parameter Cox Proportional-Hazards Model for Random Censored Data
#'
#' @description
#' It provides the cpp function for the FIM introduced in  Eq. (3.1) of Schmidt and Schwabe (2015) for random censored data (type two censored data).
#'
#'
#' @param x Vector of design points.
#' @param w Vector of design weight. Its length must be equal to the length of \code{x} and \code{sum(w) = 1}.
#' @param param Vector of values for the model parameters \eqn{c(\beta_0, \beta_1)}.
#' @param tcensor The experiment is terminated at the fixed time point \code{tcensor}.
#' @return Fisher information matrix.
#' @references Schmidt, D., & Schwabe, R. (2015). On optimal designs for censored data. Metrika, 78(3), 237-257.
#' @export
FIM_2par_exp_censor2 <- function(x, w, param, tcensor) {
    .Call('_ICAOD_FIM_2par_exp_censor2', PACKAGE = 'ICAOD', x, w, param, tcensor)
}

#' @title Fisher Information Matrix for a 3-Parameter Cox Proportional-Hazards Model for Type One Censored Data
#'
#' @description
#' It provides the cpp function for the FIM introduced in Page 247 of Schmidt and Schwabe (2015) for type one censored data.
#'
#'
#' @param x Vector of design points.
#' @param w Vector of design weight. Its length must be equal to the length of \code{x} and \code{sum(w) = 1}.
#' @param param Vector of values for the model parameters \eqn{c(\beta_0, \beta_1, \beta_2)}.
#' @param tcensor The experiment is terminated at the fixed time point \code{tcensor}.
#' @return Fisher information matrix.
#' @references Schmidt, D., & Schwabe, R. (2015). On optimal designs for censored data. Metrika, 78(3), 237-257.
#' @export
FIM_3par_exp_censor1 <- function(x, w, param, tcensor) {
    .Call('_ICAOD_FIM_3par_exp_censor1', PACKAGE = 'ICAOD', x, w, param, tcensor)
}

#' @title Fisher Information Matrix for a 3-Parameter Cox Proportional-Hazards Model for Random Censored Data
#'
#' @description
#' It provides the cpp function for the FIM introduced in Page 247 of Schmidt and Schwabe (2015) for random censored data (type two censored data).
#'
#'
#' @param x Vector of design points.
#' @param w Vector of design weight. Its length must be equal to the length of \code{x} and \code{sum(w) = 1}.
#' @param param Vector of values for the model parameters \eqn{(\beta_0, \beta_1, \beta_2)}.
#' @param tcensor The experiment is terminated at the fixed time point \code{tcensor}.
#' @return Fisher information matrix.
#' @references Schmidt, D., & Schwabe, R. (2015). On optimal designs for censored data. Metrika, 78(3), 237-257.
#' @export
FIM_3par_exp_censor2 <- function(x, w, param, tcensor) {
    .Call('_ICAOD_FIM_3par_exp_censor2', PACKAGE = 'ICAOD', x, w, param, tcensor)
}

#' @title Fisher Information Matrix for the 2-Parameter Exponential Model
#'
#' @description
#' It provides the cpp function for FIM for the model  \code{~a + exp(-b*x)}.
#'
#' @param x Vector of design points.
#' @param w Vector of design weight. Its length must be equal to the length of \code{x} and \code{sum(w) = 1}.
#' @param param Vector of values for the model parameters \code{c(a, b)}.
#' @return Fisher information matrix.
#' @references Dette, H., & Neugebauer, H. M. (1997). Bayesian D-optimal designs for exponential regression models. Journal of Statistical Planning and Inference, 60(2), 331-349.
#' @details The FIM does not depend on the value of \code{a}.
#' @examples FIM_exp_2par(x = c(1, 2), w = c(.5, .5), param = c(3, 4))
#' @export
FIM_exp_2par <- function(x, w, param) {
    .Call('_ICAOD_FIM_exp_2par', PACKAGE = 'ICAOD', x, w, param)
}

#' @title Fisher Information Matrix for the Alcohol-Kinetics Model
#' @description It provides the cpp function for FIM for the model \code{~(b3 * x1)/(1 + b1 * x1 + b2 * x2)}
#' @param x1 Vector of design points (first dimension).
#' @param x2 Vector of design points (second dimension).
#' @param w Vector of design weight. Its length must be equal to the length of \code{x} and \code{sum(w) = 1}.
#' @param param Vector of values for the model parameters \code{c(b1, b2, b3)}.
#' @return Fisher information matrix.
#' @export
FIM_kinetics_alcohol <- function(x1, x2, w, param) {
    .Call('_ICAOD_FIM_kinetics_alcohol', PACKAGE = 'ICAOD', x1, x2, w, param)
}

#' @title Fisher Information Matrix for the 2-Parameter Logistic (2PL) Model
#' @description It provides the cpp function for FIM for the model  \code{~1/(1 + exp(-b *(x - a)))}.
#' In item response theory (IRT),
#' \eqn{a} is the item difficulty parameter, \eqn{b} is the item discrimination parameter and \eqn{x} is the person ability parameter.
#' @param x Vector of design points.
#' @param w Vector of design weight. Its length must be equal to the length of \code{x} and \code{sum(w) = 1}.
#' @param param Vector of values for the model parameters \code{c(a, b)}.
#' @return Fisher information matrix.
#' @export
#' @details
#'  It can be shown that minimax and standardized D-optimal designs for the 2PL model is symmetric around point
#' \eqn{a_M = (a^L + a^U)/2}{aM = (aL + aU)/2} where \eqn{a^L}{aL} and \eqn{a^U}{aU} are the
#' lower bound and upper bound for parameter \eqn{a}, respectively. In \code{\link{ICA.control}},
#'  arguments \code{sym} and \code{sym_point} can be used to specify \eqn{a_M}{aM} and find accurate symmetric optimal designs.
#' @examples
#' FIM_logistic(x = c(1, 2), w = c(.5, .5), param = c(2, 1))
#' @importFrom Rcpp evalCpp
#' @useDynLib ICAOD
FIM_logistic <- function(x, w, param) {
    .Call('_ICAOD_FIM_logistic', PACKAGE = 'ICAOD', x, w, param)
}

#' @title Fisher Information Matrix for the Logistic Model with Two Predictors
#' @description It provides the cpp function for FIM for the following model:\cr
#'   \code{~exp(b0+ b1 * x1 + b2 * x2 + b3 * x1 * x2)/(1 + exp(b0 + b1 * x1 + b2 * x2 + b3 * x1 * x2))}.
#' @param x1 Vector of design points (for first predictor).
#' @param x2 Vector of design points (for second predictor).
#' @param w Vector of design weight. Its length must be equal to the length of \code{x} and \code{sum(w) = 1}.
#' @param param Vector of values for the model parameters \code{c(b0, b1, b2, b3)}.
#' @return Fisher information matrix.
#' @export
FIM_logistic_2pred <- function(x1, x2, w, param) {
    .Call('_ICAOD_FIM_logistic_2pred', PACKAGE = 'ICAOD', x1, x2, w, param)
}

#' @title Fisher Information Matrix for the 4-Parameter Logistic Model
#'
#' @description It provides the cpp function for the FIM for the model
#'  \code{~theta1/(1+exp(theta2*x+theta3))+theta4}.
#'  This model is another re-parameterization of the 4-parameter Hill model.
#'   For more details, see Eq. (1) and (2) in Hyun and  Wong (2015).
#' @param x Vector of design points.
#' @param w Vector of design weight. Its length must be equal to the length of \code{x} and \code{sum(w) = 1}.
#' @param param Vector of values for the model parameters \code{c(theta1, theta2, theta3, theta4)}.
#' @return Fisher information matrix.
#' @details The fisher information matrix does not depend on \code{theta4}.\cr
#' @references
#' Hyun, S. W., & Wong, W. K. (2015). Multiple-Objective Optimal Designs for Studying the Dose Response Function and Interesting Dose Levels. The international journal of biostatistics, 11(2), 253-271.
#' @seealso \code{\link{multiple}}
#' @export
#' @examples
#' FIM_logistic_4par(x = c(-6.9, -4.6, -3.9, 6.7 ),
#'                   w = c(0.489, 0.40, 0.061, 0.050),
#'                   param = c(1.563, 1.790, 8.442, 0.137))
FIM_logistic_4par <- function(x, w, param) {
    .Call('_ICAOD_FIM_logistic_4par', PACKAGE = 'ICAOD', x, w, param)
}

#' @title Fisher Information Matrix for the Mixed Inhibition Model
#'
#' @description  It provides the cpp function for the FIM for the model \code{~theta0 + theta1* log(x + theta2)}.
#'
#' @param x Vector of design points.
#' @param w Vector of design weight. Its length must be equal to the length of \code{x} and \code{sum(w) = 1}.
#' @param param Vector of values for the model parameters \code{c(theta0, theta1, theta2)}.
#' @return Fisher information matrix.
#' @references Dette, H., Kiss, C., Bevanda, M., & Bretz, F. (2010). Optimal designs for the EMAX, log-linear and exponential models. Biometrika, 97(2), 513-518.
#' @details
#' The FIM of this model does not depend on the parameter \code{theta0}.
#' @export
FIM_loglin <- function(x, w, param) {
    .Call('_ICAOD_FIM_loglin', PACKAGE = 'ICAOD', x, w, param)
}

#' @title Fisher Information Matrix for the Mixed Inhibition Model.
#'
#' @description
#'  It provides the cpp function for FIM for the model \code{~ V*S/(Km * (1 + I/Kic)+ S * (1 + I/Kiu))}
#'
#' @param S Vector of \code{S} component of design points. \code{S} is the substrate concentration.
#' @param I  Vector of \code{I} component of design points. \code{I} is the inhibitor concentration.
#' @param w Vector of design weight. Its length must be equal to the length of \code{S} and \code{I}, besides  \code{sum(w) = 1}.
#' @param param Vector of values for the model parameters \code{c(V, Km, Kic, Kiu)}.
#' @return Fisher information matrix of design.
#' @references Bogacka, B., Patan, M., Johnson, P. J., Youdim, K., & Atkinson, A. C. (2011). Optimum design of experiments for enzyme inhibition kinetic models. Journal of biopharmaceutical statistics, 21(3), 555-572.
#' @details
#'  The optimal design does not depend on parameter \eqn{V}.
#' @examples
#' FIM_mixed_inhibition(S = c(30, 3.86, 30, 4.60),
#'                      I = c(0, 0, 5.11, 4.16), w = rep(.25, 4),
#'                      param = c(1.5, 5.2, 3.4, 5.6))
#' @export
FIM_mixed_inhibition <- function(S, I, w, param) {
    .Call('_ICAOD_FIM_mixed_inhibition', PACKAGE = 'ICAOD', S, I, w, param)
}

#' @title Fisher Information Matrix for the Power Logistic Model
#' @description It provides the cpp function for FIM for the model  \code{~1/(1 + exp(-b *(x - a)))^s}, but when \code{s} is fixed (a two by two matrix).
#' @param x Vector of design points.
#' @param w Vector of design weight. Its length must be equal to the length of \code{x} and \code{sum(w) = 1}.
#' @param param Vector of values for the model parameters \code{c(a, b)}.
#' @param s parameter \code{s}.
#' @return Fisher information matrix.
#' @export
#' @note This matrix is a two by two matrix and not equal to the Fisher information matrix for the power logistic model
#' when the derivative is taken with respect to all the three parameters.
#' This matrix is only given to be used in some illustrative examples.
FIM_power_logistic <- function(x, w, param, s) {
    .Call('_ICAOD_FIM_power_logistic', PACKAGE = 'ICAOD', x, w, param, s)
}

#' @title Fisher Information Matrix for the Sigmoid Emax Model
#' @description It provides the cpp function for FIM for the model \code{~b1+(b2-b1)*(x^b4)/(x^b4+b3^b4)}
#' @param x Vector of design points.
#' @param w Vector of design weight. Its length must be equal to the length of \code{x} and \code{sum(w) = 1}.
#' @param param Vector of values for the model parameters \code{c(b1, b2, b3, b4)}.
#' The mean of response variable is .
#' @return Fisher information matrix.
#' @export
FIM_sig_emax <- function(x, w, param) {
    .Call('_ICAOD_FIM_sig_emax', PACKAGE = 'ICAOD', x, w, param)
}

det2 <- function(mat, logarithm = FALSE) {
    .Call('_ICAOD_det2', PACKAGE = 'ICAOD', mat, logarithm)
}

