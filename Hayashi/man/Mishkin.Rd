\name{Mishkin}
\docType{data}
\alias{Mishkin}
\title{Inflation and Interest Rates}
\description{
  quarterly observations from 1950-2 to 1990-12

 \emph{number of observations} :  491

 \emph{observation} :  country

   \emph{country} :  United States

}
\usage{data(Mishkin)}
\format{A dataframe containing :
  \describe{
    \item{year}{the date}
    \item{mounth}{the mounth}
    \item{PAI1}{one-mounth inflation rate (in percent, annual rate)}
    \item{PAI3}{three-mounth inflation rate (in percent, annual rate)}
    \item{TB1}{one-mounth T-bill rate (in percent, annual rate)}
    \item{TB3}{three-mounth T-bill rate (in percent, annual rate)}
    \item{CPI}{cPI for urban consumers, all items (the 1982-1984 average is set to 100)}
  }
}
\source{
    Mishkin, F. (1992) \dQuote{Is the Fisher effect for real ?}, \emph{Journal of Monetary Economics }, \bold{30}, 195-215.
}
\references{
    Hayashi, F. (2000) \emph{Econometrics}, Princeton University Press, chapter 2, 176-184.
}
\keyword{datasets}