\name{Crime}
\docType{data}
\alias{Crime}
\title{Crime in North Carolina }
\description{
  a panel of 90 observations  from 1981  to 1987

  \emph{number of observations} :  630

  \emph{observation} :  regional

  \emph{country} :  United States

}
\usage{data(Crime)}
\format{A dataframe containing :
  \describe{
    \item{county}{county identifier}
    \item{year}{year from 1981 to 1987}
    \item{crmrte}{crimes committed per person}
    \item{prbarr}{'probability' of arrest}
    \item{prbconv}{'probability' of conviction}
    \item{prbpris}{'probability' of prison sentence}
    \item{avgsen}{average sentence, days    }
    \item{polpc}{police per capita}
    \item{density}{hundreds of people per square mile}
    \item{taxpc}{tax revenue per capita}
    \item{region}{one of 'other', 'west' or 'central'}
    \item{smsa}{'yes' or 'no' if in SMSA}
    \item{pctmin}{percentage minority in 1980}
    \item{wcon}{weekly wage in construction}
    \item{wtuc}{
      weekly wage in \code{trns, util, commun} 
    }
    \item{wtrd}{
      weekly wage in whole sales and retail trade
    }
    \item{wfir}{
      weekly wage in finance, insurance and real
      estate
    }
    \item{wser}{weekly wage in service industry}
    \item{wmfg}{weekly wage in manufacturing}
    \item{wfed}{weekly wage of federal employees}
    \item{wsta}{weekly wage of state employees}
    \item{wloc}{
      weekly wage of local governments employees      
    }
    \item{mix}{offense mix: face-to-face/other}
    \item{pctymle}{percentage of young males}
  }
}
\note{
  Thanks to Yungfong "Frank" Tang for identifying 
  an error in the description of "density", 
  previously documented erroneously as only "people 
  per square mile". 
}
\source{
    Cornwell, C.  and  W.N.  Trumbull (1994) \dQuote{Estimating the economic model of crime with panel data}, \emph{Review of Economics and Statistics}, \bold{76}, 360--366.

    Baltagi, B. H. (2006) \dQuote{Estimating an economic model of crime using panel data from North Carolina}, \emph{Journal of Applied Econometrics}, 21(4), May/June 2006, pp. 543-547.  
    
    See also: \href{http://fmwww.bc.edu/ec-p/data/wooldridge/crime4.des}{\code{CRIME4.DES}} and Baltagi in \href{http://qed.econ.queensu.ca/jae/datasets/baltagi003/}{JAE Data Archive}.
}
\references{
    Baltagi, Badi H. (2003) \emph{Econometric analysis of panel data}, John Wiley and sons, 
    \url{https://www.wiley.com/legacy/wileychi/baltagi/}.
}
\seealso{
  \code{\link{Index.Source}}, 
  \code{\link{Index.Economics}}, 
  \code{\link{Index.Econometrics}}, 
  \code{\link{Index.Observations}},
  \code{\link{Index.Time.Series}}, 
  \code{\link[plm]{Crime}}
}
\keyword{datasets}
