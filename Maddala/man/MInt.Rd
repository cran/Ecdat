\name{MInt}
\docType{data}
\alias{MInt}
\title{Monthly Data on Interest Rates}
\description{
  quarterly observations from 1950-2 to 1982-12

 \emph{number of observations} :  395

 \emph{observation} :  Country

   \emph{country} :  United States

}
\usage{data(MInt)}
\format{A dataframe containing :
  \describe{
    \item{Year}{year}
    \item{Quarter}{quarter}
    \item{STIR}{short term interest rate (1 month treasury bill rate)}
    \item{LTIR}{long term interest rate (monthly yields to maturity of 20 years treasury bounds)}
  }
}
\source{
    Dejong, David N. (1989) \emph{Co-integration and trend stationary in macroeconomics time series:}, Working Paper 89-05, University of Iowa .
}
\references{
    Maddala, G.S. (2001) \emph{Introduction to Econometrics}, John Wiley and sons, ltd., Table 13.7.
}
\keyword{datasets}