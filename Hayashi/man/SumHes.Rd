\name{SumHes}
\docType{data}
\alias{SumHes}
\title{The Penn Table}
\description{
  a panel of 125 observations  from 1960  to 1985

 \emph{number of observations} :  3250

 \emph{observation} :  country

   \emph{country} :  world

}
\usage{data(SumHes)}
\format{A dataframe containing :
  \describe{
    \item{ID}{country's identification code}
    \item{COM}{1 for a communist regime, 0 otherwise}
    \item{OPEC}{1 for a country belonging to the OPEC, 0 otherwise}
    \item{YEAR}{the year}
    \item{POP}{country's population (in thousands)}
    \item{GDP}{real GDP per capita (in 1985 US dollars)}
    \item{SR}{saving rate (in percent)}
  }
}
\source{
    Summers, R.  and  A.  Heston (1991) \dQuote{The Penn world table (mark 5): an exanded set of international comparaisons, 1950-1988}, \emph{Quarterly Journal of Economics }, \bold{29}, 229-256.
}
\references{
    Hayashi, F. (2000) \emph{Econometrics}, Princeton University Press, chapter 5, 358-363.
}
\keyword{datasets}