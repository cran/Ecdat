\name{CRSPmon}
\docType{data}
\alias{CRSPmon}
\title{Monthly returns from the CRSP database}
\description{
  monthly observations from 1969-1 to 1998-12

 \emph{number of observations} :  360

 \emph{observation} :  firms

   \emph{country} :  United States

}
\usage{data(CRSPmon)}
\format{A dataframe containing :
  \describe{
    \item{ID}{the observation number}
    \item{year}{the year}
    \item{month}{the month}
    \item{GE}{the return for General Electric, Permno 12060}
    \item{IBM}{ the return for IBM, Permno 12490}
    \item{Mobil}{the return for Mobil Corporation, Permno 15966}
    \item{CRSP}{ the return for the CRSP value-weighted index, including  dividends}
  }
}
\note{\dQuote{All data are taken from the CRSP monthly returns database created by the Center for Research in Security Prices of the University of Chicago. They are provided, with the permission of the Center for Research in Security Prices, solely for the purpose of doing exercises from "Econometric Theory and Methods" by Russell Davidson and James G. MacKinnon..}}
\source{
    Center for Research in Security Prices, Graduate School of  Business, University of Chicago,  725 South Wells - Suite 800,  Chicago, Illinois  60607,  \url{http://www.crsp.com}.
}
\references{
    Davidson, R.  and  James G.  MacKinnon (2004) \emph{Econometric Theory and Methods}, New York, Oxford University Press, chapter 13.
}
\keyword{datasets}