\name{PanElec}
\docType{data}
\alias{PanElec}
\title{Panel electricity}
\description{
  a panel of 50 observations  from 1970  to 1990

 \emph{number of observations} :  1050

 \emph{observation} :  local

   \emph{country} :  United States

}
\usage{data(PanElec)}
\format{A dataframe containing :
  \describe{
    \item{year}{date}
    \item{state}{state code					}
    \item{inc}{nominal disposable income 1,000s				}
    \item{def}{deflator 1987=100				}
    \item{tpop}{population 1,000s				}
    \item{yd}{real \$1987 disposable income				}
    \item{ydpc}{real \$1987 disposable income per capita				}
    \item{esrcb}{residential electricity consumption billion Btu				}
    \item{esrcbpc}{residential electricity consumption billion Btu per capita				}
    \item{esrcd}{residential electricity price				}
    \item{resrcd}{real \$1987 electricity price				}
    \item{esrcbg}{residential natural gas consumption billion Btu				}
    \item{esrcbgpc}{residential natural gas consumption billion Btu per capita				}
    \item{esrcdg}{residential natural gas price				}
    \item{resrcdg}{real \$1987 natural gas price				}
    \item{hdd}{population weighted heating degree days				}
    \item{cdd}{population weighted cooling degree days				}
  }
}
\note{\dQuote{The original data set included all 50 states, D.C., and total US. The sample period is for 1970-1990. The JBES only used data for 49 states. Hawaii was omitted for the lack of temperature data. Contact: Frederick Joutz, Dept. of Economics, The George Washington University, Washington DC 20052.}}
\references{
    Maddala, G.S. (2001) \emph{Introduction to Econometrics}, John Wiley and sons, ltd., Table 15.1.
}
\keyword{datasets}