\name{Tbrate}
\docType{data}
\alias{Tbrate}
\title{Interest rate, GDP and inflation}
\description{
  quarterly observations from 1950-1 to 1996-4

 \emph{number of observations} :  188

 \emph{observation} :  Country 

   \emph{country} :  Canada

}
\usage{data(Tbrate)}
\format{A dataframe containing :
  \describe{
    \item{ID}{the observation number}
    \item{year}{the year}
    \item{quarter}{the quarter}
    \item{r}{the 91-day Treasury Bill rate}
    \item{y}{the log of real GDP}
    \item{pi}{ the inflation rate}
  }
}
\note{\dQuote{r is a quarterly average of series B14001, y is the log of series D20463, pi is 400*(log(D20012/D20464)).}}
\source{
    CANSIM database of Statistics Canada.
}
\references{
    Davidson, R.  and  James G.  MacKinnon (2004) \emph{Econometric Theory and Methods}, New York, Oxford University Press, chapter 2.
}
\keyword{datasets}