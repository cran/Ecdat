\name{CrCard}
\docType{data}
\alias{CrCard}
\title{Expenditure and Default Data}
\description{
  a cross-section

 \emph{number of observations} :  1319

 \emph{observation} :  individuals

   \emph{country} :  United States

}
\usage{data(CrCard)}
\format{A dataframe containing :
  \describe{
    \item{Cardhldr}{dummy variable, one if application for credit card accepted, zero if not}
    \item{Majordrg}{number of major derogatory reports}
    \item{Age}{age n years plus twelfths of a year}
    \item{Income}{yearly income (divided by 10,000)}
    \item{Expinc}{ratio of monthly credit card expenditure to yearly income}
    \item{Avgexp}{average monthly credit card expenditure}
    \item{Ownrent}{1 if owns their home, 0 if rent}
    \item{Selfempl}{1 if self employed, 0 if not}
    \item{Depndt}{1 + number of dependents}
    \item{Incper}{income divided by number of dependents}
    \item{Curadd}{months living at current address}
    \item{Major}{number of major credit cards held}
    \item{Active}{number of active credit accounts}
  }
}
\source{
    Greene, W.H. (1992) \emph{A statistical model for credit scoring}, Working Paper No Ec-92-29, New York University, Departement of Economics, Stern School of Business .
}
\references{
    Greene, W.H. (2003) \emph{Econometric Analysis}, Prentice Hall, Table F21-4.
}
\section{Original description}{\dQuote{1319 Observations.}}
\keyword{datasets}