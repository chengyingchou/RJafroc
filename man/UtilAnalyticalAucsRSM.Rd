% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/UtilAnalyticalAucsRSM.R
\name{UtilAnalyticalAucsRSM}
\alias{UtilAnalyticalAucsRSM}
\title{RSM ROC/AFROC/wAFROC AUC calculator}
\usage{
UtilAnalyticalAucsRSM(
  mu,
  lambdaP,
  nuP,
  zeta1 = -Inf,
  lesDistr,
  relWeights = 0,
  tempTest = 0
)
}
\arguments{
\item{mu}{The mean of the Gaussian distribution for the 
ratings of latent LLs (continuous ratings of lesions that 
are found by the search mechanism). The NLs are assumed to be distributed
as N(0,1).}

\item{lambdaP}{The \emph{physical} lambda prime parameter, 
which describes 
the random number of latent NLs (suspicious regions that do not 
correspond to actual lesions) per case.}

\item{nuP}{The \emph{physical} \code{nuP} parameters, 
the success probability of the binomial distribution describing 
the random numbers of latent LLs (suspicious regions that correspond 
to actual lesions) per diseased case.}

\item{zeta1}{The lowest reporting threshold, the default is \code{-Inf}.}

\item{lesDistr}{The lesion distribution 1D array, i.e., the probability
mass function (pmf) of the numbers of lesions for diseased cases.}

\item{relWeights}{The relative weights of the lesions; a vector of 
length \code{maxLL}; if zero, the default, equal weights are assumed.}

\item{tempTest}{Testing the cpp code, default 0, reserved for developer.}
}
\value{
A list containing the ROC, AFROC and wAFROC AUCs corresponding to the 
   specified parameters
}
\description{
{Returns the ROC, AFROC and wAFROC AUCs corresponding to 
   specified RSM parameters. See also \code{\link{UtilAucPROPROC}}, 
   \code{\link{UtilAucBinormal}} and \code{\link{UtilAucCBM}}}
}
\examples{
mu <- 1;lambdaP <- 1;nuP <- 0.9
lesDistr <- c(0.9, 0.1) 
## i.e., 90\% of dis. cases have one lesion, and 10\% have two lesions
relWeights <- c(0.05, 0.95)
## i.e., lesion 1 has weight 5 percent while lesion two has weight 95 percent

UtilAnalyticalAucsRSM(mu, lambdaP, nuP, zeta1 = -Inf, lesDistr)
UtilAnalyticalAucsRSM(mu, lambdaP, nuP, zeta1 = -Inf, lesDistr, relWeights)


}
\references{
Chakraborty DP (2017) \emph{Observer Performance Methods for Diagnostic Imaging - Foundations, 
Modeling, and Applications with R-Based Examples}, CRC Press, Boca Raton, FL. 
\url{https://www.crcpress.com/Observer-Performance-Methods-for-Diagnostic-Imaging-Foundations-Modeling/Chakraborty/p/book/9781482214840}

Chakraborty DP (2006) A search model and figure of merit for observer data acquired according to the free-response 
paradigm, Phys Med Biol 51, 3449-3462.

Chakraborty DP (2006) ROC Curves predicted by a model of visual search, Phys Med Biol 51, 3463--3482.
}
