\name{Beveridge}
\docType{data}
\alias{Beveridge}
\title{Beveridge Trend-free Wheat Price Index}
\description{
  yearly observations from 1500 to 1869

 \emph{number of observations} :  370

 \emph{observation} :  Country

   \emph{country} :  Europe

}
\usage{data(Beveridge)}
\format{A dataframe containing :
  \describe{
    \item{Year}{the year}
    \item{AIN}{mean of the index nimbers for the countries and included, each of these being reduced to basis: mean of price dor 1700-1745=100}
    \item{TFI}{trend free index: shows the actual index number for each year as the mean of the actual index numbres for 31 years of which that year is the center}
  }
}
\source{
    Beveridge, W.H. (1921) \dQuote{Weather and Harvest cycles}, \emph{Economic Journal }, \bold{31}, 429-452.
}
\references{
    Maddala, G.S. (2001) \emph{Introduction to Econometrics}, John Wiley and sons, ltd., Table 13.2, p.534.
}
\keyword{datasets}