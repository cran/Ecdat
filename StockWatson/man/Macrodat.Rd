\name{Macrodat}
\docType{data}
\alias{Macrodat}
\title{Macroeconomic time series for the United States}
\description{
  quarterly observations from 1959-1 to 2000-4

 \emph{number of observations} :  168

 \emph{observation} :  country

   \emph{country} :  United States

}
\usage{data(Macrodat)}
\format{A dataframe containing :
  \describe{
    \item{Date}{year:quarter}
    \item{LHUR}{unemployment Rate (Average of Months in Quarter)       }
    \item{PUNEW}{cPI   (Average of Months in Quarter)       }
    \item{FYFF}{federal Funds Interest Rate (Last Month in Quarter)       }
    \item{FYGM3}{3 Month Treasury Bill Interest Rate (Last Month in Quarter)       }
    \item{FYGT1}{1 Year Treasury Bond Interest Rate (Last Month in Quarter)       }
    \item{EXRUK}{dollar / Pound Exchange Rate (Last Month in Quarter)       }
    \item{GDPJP}{real GDP for Japan       }
  }
}
\source{
    Bureau of Labor Statistics, OECD, Federal Reserve.
}
\references{
    Stock, James H.  and  Mark W.  Watson (2003) \emph{Introduction to Econometrics}, Addison-Wesley Educational Publishers.
}
\keyword{datasets}