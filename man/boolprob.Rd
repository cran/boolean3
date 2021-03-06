% Generated by roxygen2 (4.0.2): do not edit by hand
\name{boolprob}
\alias{boolprob}
\title{Calculate predicted probabilities}
\usage{
boolprob(obj, vars = NULL, newdata = NULL, k = 50, conf.int = FALSE,
  n = 100, as.table = TRUE, scales = list(x = list(relation = "free")),
  between = list(x = 1, y = 1), xlab = "x",
  ylab = "Predicted probability", ...)
}
\arguments{
\item{obj}{object of \code{boolean-class} containing a fit boolean model.}

\item{vars}{vector selecting a set of covariates from the fitted
model. This can be a character vector of covariate names (as output from
\code{summary(obj)}), or a numeric vector indexing the desired covariates.}

\item{newdata}{data.frame with the same structure as model.matrix(boolean).}

\item{k}{integer indicating the number of points at which the
predicted probability should be calculated.}

\item{conf.int}{logical; should confidence intervals be simulated.}

\item{n}{number of draws to take from the estimated parameter space.}

\item{as.table}{logical (default \code{TRUE}), to be passed to
\code{xyplot}.}

\item{scales}{list of settings for the scales argument passed to
\code{xyplot}.}

\item{between}{numeric specifying the space between panels.}

\item{xlab}{string, the \code{x}-axis label.}

\item{ylab}{string, the \code{y}-axis label.}

\item{...}{Additional arguments to pass to \code{\link{xyplot}}. See that
documentation for details.}
}
\value{
Returns an object of \code{\link{boolprob-class}}, the default
action being to present the default plot.
}
\description{
This function calculates predicted probabilities for the selected covariate
profiles.
}
\examples{
\dontrun{

## Note: This example assumes a boolean model has already been fit.

## Plot predicted probabilities for a fitted model. Either vars or
## newdata *must* be specified.
boolprob(fit, vars = c("x1_a", "x4_b"))
boolprob(fit, vars = c(2, 3, 4, 6))

## Specifying conf.int = TRUE produces simulated confidence intervals.
## The number of samples to pull from the distribution of the estimated
## coefficients is controlled by n; n=100 is default. This can take a
## while.
(prob <- boolprob(fit, vars = c(2, 3, 4, 6), n = 1000, conf.int = TRUE))
}
}
\author{
Jason W. Morgan (\email{morgan.746@osu.edu})
}

