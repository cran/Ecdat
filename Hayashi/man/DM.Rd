\name{DM}
\docType{data}
\alias{DM}
\title{DM-Dollar Exchange Rate}
\description{
  weekly observations from 1975 to 1989\cr

 \emph{number of observations} :  778 \cr
   \emph{observation} :  country \cr
   \emph{country} :  Germany \cr
    }
\usage{data(DM)}
\format{A dataframe containing :
  \describe{
    \item{Date}{the date of the observation (19850104 is January, 4, 1985)}
    \item{S}{the ask price of the dollar in units of Pound in the spot market on Friday of the current week}
    \item{F}{the ask price of the dollar in units of Pound in the 30-day forward market on Friday of the current week}
    \item{S30}{the bid price of the dollar in units of Pound in the spot market on the delivery date on a current forward contract}
  }
}
\source{
    Bekaert, G.  and  R.  Hodrick (1993) ``On biases in the measurement of foreign exchange risk premiums'', \emph{Journal of International Money and Finance }, \bold{12}, 115-138. \cr
}
\references{
    Hayashi, F. (2000) \emph{Econometrics}, Princeton University Press, chapter 6, 438-443. \cr
}
\keyword{datasets}