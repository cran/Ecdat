\name{Classical}
\docType{data}
\alias{Classical}
\title{The classical normal linear model}
\description{
  artificial datas

 \emph{number of observations} :  50

}
\usage{data(Classical)}
\format{A dataframe containing :
  \describe{
    \item{ID}{the observation number}
    \item{y}{ the dependent variable}
    \item{x2}{the first regressor, x2}
    \item{x3}{the second regressor, x3}
  }
}
\note{\dQuote{These are artificial data generated from the classical normal linear model \eqn{y_t = \beta_1 + \beta_2 X_{t2} + \beta_3 X_{t3} + u_t, \mbox{ where } u_t \mbox{ is NID}(0,\sigma^2)}{y_t = beta_1 + beta_2 X_t2 + beta_3 X_t3 + u_t,  where  u_t  is NID(0,\sigma^2)}. In the DGP, \eqn{\beta_1 = 5.0,  \beta_2 = 1.0, \beta_3=0.3, \mbox{ and } \sigma^2=1.0}{beta_1 = 5.0, beta_2 = 1.0, beta_3=0.3, and sigma^2=1.0}.}}
\references{
    Davidson, R.  and  James G.  MacKinnon (2004) \emph{Econometric Theory and Methods}, New York, Oxford University Press, chapter 1.
}
\keyword{datasets}