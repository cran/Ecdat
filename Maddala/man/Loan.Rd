\name{Loan}
\docType{data}
\alias{Loan}
\title{Data for U.S. Commercial Loan Market}
\description{
  monthly observations from 1979-1 to 1984-12

 \emph{number of observations} :  72

 \emph{observation} :  Country

   \emph{country} :  United States

}
\usage{data(Loan)}
\format{A dataframe containing :
  \describe{
    \item{N}{index}
    \item{Q}{total commercial loans (billions of dollars)}
    \item{R}{average prime rate charged by banks}
    \item{RD}{aAA corporate bound rate (represents the price of alternative financing to firms)}
    \item{X}{industrial production index and represents firms' expectation about future economic activity}
    \item{RS}{3-mounth treasury bill rate (represents an alternative) rate of return for banks}
    \item{y}{total bank deposits (represents a scale variable) (billions of dollars)}
  }
}
\source{
     Several issues of the Federal Reserve Bulletin. I would like to thank Walter Mayer for providing me with the data..
}
\references{
    Maddala, G.S. (2001) \emph{Introduction to Econometrics}, John Wiley and sons, ltd., Table 9.3 	.
}
\keyword{datasets}