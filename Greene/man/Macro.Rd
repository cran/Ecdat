\name{Macro}
\docType{data}
\alias{Macro}
\title{Macroeconomics Data Set}
\description{
  quarterly  observations from 1950-1 to 2000-1

 \emph{number of observations} :  204

 \emph{observation} :  country

   \emph{country} :  United States

}
\usage{data(Macro)}
\format{A dataframe containing :
  \describe{
    \item{Year}{date}
    \item{qtr}{quarter}
    \item{realgdp}{real GDP (\$bil)}
    \item{realcons}{real consumption expenditures}
    \item{realinvs}{real investment by private sector}
    \item{realgovt}{real government expenditures}
    \item{realdpi}{real disposable personal income}
    \item{cpiu}{consumer price index}
    \item{M1}{nominal money stock}
    \item{tbilrate}{quarterly average of month end 90 day T-bill rate}
    \item{unemp}{unemployment rate}
    \item{pop}{population, mil. interpolate of year and figures using constant growth rate per quarter}
    \item{infl}{rate of inflation (first observation missing)}
    \item{realint}{ex post real interest rate = Tbilrate - Infl. (First observation missing)}
  }
}
\source{
    Department of Commerce, BEA website      .
    \url{www.economagic.com}.
}
\references{
    Greene, W.H. (2003) \emph{Econometric Analysis}, Prentice Hall, Table F5.1.
}
\section{Original description}{\dQuote{Quarterly, 1950I to 2000IV.}}
\keyword{datasets}