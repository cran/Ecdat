\name{Money}
\docType{data}
\alias{Money}
\title{Money, GDP and interest rate in Canada}
\description{
  quarterly observations from 1967-1 to 1998-4

 \emph{number of observations} :  128

 \emph{observation} :  Country

   \emph{country} :  Canada

}
\usage{data(Money)}
\format{A dataframe containing :
  \describe{
    \item{ID}{ the observation number}
    \item{year}{ the year}
    \item{quarter}{ the quarter}
    \item{M}{log of the real money supply}
    \item{Y}{the log of GDP, in 1992 dollars, seasonally adjusted}
    \item{P}{the log of the price level}
    \item{R}{the 3-month Treasury Bill rate}
  }
}
\note{\dQuote{M is the log of series B1629 (M1B), converted to quarterly, minus P. Y is the log of series D14872. P is the log of series D14840 divided by series D14872. R is series B14007, converted to quarterly.}}
\source{
    CANSIM Database of Statistics Canada.
}
\references{
    Davidson, R.  and  James G.  MacKinnon (2004) \emph{Econometric Theory and Methods}, New York, Oxford University Press, chapter 7 and 8.
}
\keyword{datasets}