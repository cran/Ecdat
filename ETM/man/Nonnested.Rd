\name{Nonnested}
\docType{data}
\alias{Nonnested}
\title{Artifical datas for testing non-nested models}
\description{
  artificial datas

 \emph{number of observations} :  40

}
\usage{data(Nonnested)}
\format{A dataframe containing :
  \describe{
    \item{ID}{the observation number}
    \item{x1}{the regressor x1}
    \item{x2}{the regressor x2}
    \item{z2}{the regressor z2}
    \item{z3}{the regressor z3}
    \item{z4}{the regressor z4}
  }
}
\note{\dQuote{These are artificial data where x1, x2, z3, and z4 are independent drawings from the standard normal distribution, and z2 = x1-x2 plus another vector of independent standard normal drawings.}}
\references{
    Davidson, R.  and  James G.  MacKinnon (2004) \emph{Econometric Theory and Methods}, New York, Oxford University Press, chapter 15.
}
\keyword{datasets}