\name{Participation}
\docType{data}
\alias{Participation}
\title{Labor force participation}
\description{
  a cross-section

 \emph{number of observations} :  872

 \emph{observation} :  Individuals

   \emph{country} :  Switzerland

}
\usage{data(Participation)}
\format{A dataframe containing :
  \describe{
    \item{ID}{the observation number}
    \item{LFP}{a labour force participation dummy}
    \item{LNNLINC}{the log of nonlabour income}
    \item{AGE}{age in years divided by 10}
    \item{EDUC}{years of formal education}
    \item{NYC}{the number of young children (younger than 7)}
    \item{NOC}{ number of older children}
    \item{FOREIGN}{ a dummy, equal to 1 if obs is not Swiss}
  }
}
\source{
     Gerfin, Michael (1996) \dQuote{Parametric and semiparametric estimation of the binary  response}, \emph{Journal of Applied Econometrics }, \bold{11(3)}, 321-340.
}
\references{
    Davidson, R.  and  James G.  MacKinnon (2004) \emph{Econometric Theory and Methods}, New York, Oxford University Press, chapter 11.
}
\keyword{datasets}