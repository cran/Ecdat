\name{Consumption}
\docType{data}
\alias{Consumption}
\title{Quarterly data on consumption and expenditure}
\description{
  quarterly  observations from 1947-1 to 1996-4

 \emph{number of observations} :  200

 \emph{observation} :  Country

   \emph{country} :  Canada

}
\usage{data(Consumption)}
\format{A dataframe containing :
  \describe{
    \item{ID}{the observation number}
    \item{year}{the year}
    \item{quarter}{the quarter}
    \item{YD}{ personal disposable income, 1986 dollars}
    \item{CE}{personal consumption expenditure, 1986 dollars}
  }
}
\note{\dQuote{All data are taken from the CANSIM database of Statistics Canada. YD is series D20111 times series D20464 over series D20103. CE is series D20464.}}
\references{
    Davidson, R.  and  James G.  MacKinnon (2004) \emph{Econometric Theory and Methods}, New York, Oxford University Press, chapter 1, 3, 4, 6, 9, 10, 14 and 15.
}
\keyword{datasets}