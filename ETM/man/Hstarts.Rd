\name{Hstarts}
\docType{data}
\alias{Hstarts}
\title{Housing starts}
\description{
  quarterly observations from 1960-1 to 2001-4

 \emph{number of observations} :  168

 \emph{observation} :  Country

   \emph{country} :  Canada

}
\usage{data(Hstarts)}
\format{A dataframe containing :
  \describe{
    \item{ID}{the observation number}
    \item{year}{the year}
    \item{quarter}{the quarter}
    \item{hs}{ the log of urban housing starts in Canada, not seasonally adjusted, CANSIM series J6001, converted to quarterly}
    \item{hssa}{the log of urban housing starts in Canada, seasonally adjusted, CANSIM series J9001, converted to quarterly. Observations prior to 1966:1 are missing}
    \item{q1}{first-quarter seasonal dummy}
    \item{q2}{is a second-quarter seasonal dummy}
    \item{q3}{is a third-quarter seasonal dummy}
  }
}
\references{
    Davidson, R.  and  James G.  MacKinnon (2004) \emph{Econometric Theory and Methods}, New York, Oxford University Press, chapter 13.
}
\keyword{datasets}