\name{USGDPpresidents}
\docType{data}
\alias{USGDPpresidents}
\title{
  US GDP per capita with presidents and wars
}
\description{
  It is commonly claimed that Franklin Roosevelt 
  (FDR) did not end the Great Depression:  World 
  War II (WW2) did.  This is supported by the 10.6
  percent growth per year in real Gross Domestic
  Product (GDP) per capita seen in the standard 
  GDP estimates from 1940 to 1945.  It is also 
  supported by the rapid decline in unemployment
  during the war.  
  
  However, no comparable growth spurts in GDP per 
  capita catch the eye in a plot of 
  \code{log(GDP per capita)} from 1790 to 2015,
  whether associated with a war or not, using data
  from Measuring Worth.  The only other features 
  of that plot that seem visually comparable are 
  the economic disaster of Herbert Hoover's
  presidency (when GDP per capital fell by 10 
  percent per year, 1929-1932), the impressive 
  growth of the US economy during the first seven
  years of Franklin Roosevelt's presidency (6.4
  percent per year, 1933-1940), and the post-World
  War II recession (when GDP per capita fell by 
  7.9 percent per year, 1945-1947).  (NOTE:  The 
  web site for Measuring Worth, 
  \code{https://measuringworth.com/} still works, 
  but has not always been maintained to current
  internet security standards.  Therefore, the 
  link is provided here in text but not as a link.)
  
  Closer inspection of this plot suggests that the 
  US economy has generally grown faster after FDR
  than before.  This might plausibly be attributed 
  to 
  \href{https://en.wikipedia.org/wiki/John_Maynard_Keynes}{
  "The Keynesian Ascendancy 1939-1979"}.  
  
  Unemployment dropped during the First World War 
  as it did during WW2.  Comparable unemployment 
  data are not available for the U.S. during other
  major wars, most notably the 
  \href{https://en.wikipedia.org/wiki/American_Civil_War}{American Civil War} and the 
  \href{https://en.wikipedia.org/wiki/Mexican-American_War}{Mexican-American War}.  
  
  This data set provides a platform for testing 
  the effects of presidency, war, and Keynes.  It
  does this by combining the numbers for US
  population and real GDP per capital dollars from
  Measuring Worth with the presidency and a list 
  of major wars and an estimate of the battle
  deaths by year per million population.  (As 
  noted above, the web address for measuring worth, 
  \code{https://measuringworth.com/}, often gives 
  security warnings but still seems to provide the 
  data as before.)  
  
  \href{https://en.wikipedia.org/wiki/Unemployment_in_the_United_States#Historical_unemployment_rate_charts}{US unemployment is 
  also considered.}
}
\usage{
data(USGDPpresidents)
}
\format{A \code{\link{data.frame}} containing 259 
      observations on the following variables:
  \describe{
    \item{Year}{ 
      integer: the year, 
      \code{c(seq(1610, 1770, 10), 1774:2015)}
    } 
    \item{CPI}{
      Numeric:  U. S. Consumer Price Index per
      Officer and Williamson (2015).  Average 
      1982-84 = 100.  
    }    
    \item{GDPdeflator}{
      numeric:  Implicit price deflators for 
      Gross Domestic Product with 2012s = 100 
      per Johnston and Williamson.  
    }
    \item{population.K}{ 
      integer:  US population in thousands.  
      
      Population figures for 1610 to 1780 came 
      from Springston (2013).  The rest came 
      from Johnston and Williamson.  (The 
      early population figures reflect only 
      the European settlers in the British 
      colonies that eventually became the 
      US.)
    }
    \item{realGDPperCapita}{
      numeric:  real Gross Domestic Product 
      per capita in 2012 dollars 
    } 
    \item{executive}{
      \code{\link{ordered}}:  Crown of England
      through 1774, followed by the
      \code{"ContinentalCongress"} and the 
      \code{"ArticlesOfConfederation"} until
      Washington, who became President under the
      current base constitution in 1789.  Two
      nineteenth century presidents are not 
      listed here (William Henry Harrison and 
      James A. Garfield), because they died so 
      soon after inauguration that any 
      contribution they made to the economic 
      growth of the nation might seem too slight 
      to measure accurately in annual data like 
      this;  their contributions therefore 
      appear combined with their replacements 
      (John Tyler and Chester A. Arthur, 
      respectively).  The service of two other 
      presidents is officially combined here:  
      "Taylor-Fillmore" refers to the 16 months
      served by Zachary Taylor with the 32 months 
      of Millard Fillmore.  These modifications 
      make 
      \href{https://en.wikipedia.org/wiki/Barack_Obama}{Barack Obama}
      number 41 on this list, even though he's 
      the 44th president of the U.S.  
    }
    \item{war}{
      \code{\link{ordered}}:  This lists the 
      major wars in US history by years 
      involving active hostilities.  A war is 
      "major" for present purposes if it met 
      two criteria:  
      
      (1) It averaged at least 10 battle deaths 
      per year per million US population.  
      
      (2) It was listed in one of two lists of 
      wars:  
      For wars since 1816, it must have appeared 
      in the 
      \href{https://correlatesofwar.org/}{Correlates of 
      War}.  For wars between 1790 and 1815, it 
      must have appeared in the Wikipedia 
      \href{https://en.wikipedia.org/wiki/List_of_wars_involving_the_United_States}{
      "List of wars involving the United States"}.  
      
      The resulting list includes a few 
      adjustments to the list of wars that might 
      come readily to mind for people moderately
      familiar with US history.    
      
      A traditional list might start with the
      American Revolution, the War of 1812, the
      Mexican-American war, the Civil War, the
      Spanish-American war, World Wars I and II,
      Korea, and Vietnam.  In addition, the 
      \href{https://en.wikipedia.org/wiki/Northwest_Indian_War}{
      Northwest Indian War} involved very roughly 
      30 battle deaths per year per million
      population 1785-1795.  This compares with the
      roughly 100 battle deaths per year 1812-1815
      for the 
      \href{https://en.wikipedia.org/wiki/War_of_1812}{
      War of 1812}.  
      
      For present purposes, the Spanish-American 
      War is combined with the lesser-known 
      American-Philippine War:  The latter 
      involved 50 percent more battle deaths but 
      over a longer period of time and arguably 
      with less impact on the stature of the US as 
      a growing world power.  However, its 
      magnitude suggest it might have impacted the 
      US economy in a way roughly comparable to 
      the Spanish-American war.  The two are
      therefore listed here together as 
      "Spanish-American-Philippine" war.  
      
      \href{https://correlatesofwar.org/}{The Correlates of 
      War (COW)} data include multiple US uses 
      of military force  during the Vietnam War 
      era.  It starts with "Vietnam Phase 1", 
      1961-65, with 506 battle deaths in the COW 
      data base.  It includes the "Second 
      Laotian" war phases 1 and 2, plus 
      engagement with a "Communist Coalition" 
      and Khmer Rouge as well as actions in the
      Dominican Republic and Guatemala.  The 
      current \code{\link{data.frame}} includes 
      only "Vietnam", referring primarily to 
      COW's "Vietnam War, Phase 2", 1965-1973.  
      The associated battle deaths include 
      battle deaths from these other, lesser
      concurrent conflicts.  

      The COW data currently ends in 2007.  
      However, the post-2000 conflicts in 
      Afghanistan and Iraq averaged less than 
      1,000 battle deaths per year or roughly 3
      battle deaths per year per million population.
      This is below the threshold of 10 battle 
      deaths per year per million population.  
      This in turn suggests that any impact of 
      those conflicts on the US economy might be
      small and difficult to estimate.
    }
    \item{battleDeaths}{
      numeric:  Numbers of battle deaths by year
      estimated by allocating to the different 
      years the totals reported for each major war 
      in proportion to the number of days 
      officially in conflict each year.  The 
      totals were obtained (in August-September 
      2015) from 
      \href{https://correlatesofwar.org/}{The 
      Correlates of War} data for conflicts since
      1816 and from Wikipedia for previous wars, 
      as noted above.  
    }
    \item{battleDeathsPMP}{
      numeric:  battle deaths per million 
      population = 
      \code{1000*battleDeaths/population.K}.   
    }
    \item{Keynes}{
      integer taking the value 1 between 1939 and
      1979 and 0 otherwise, as suggested by the
      section entitled "The Keynesian Ascendancy 
      1939-1979" in the Wikipedia article on     
      \href{https://en.wikipedia.org/wiki/John_Maynard_Keynes}{
      John Maynard Keynes}. 
    }
    \item{unemployment}{
      Estimated US unemployment rate 
    }
    \item{unempSource}{
      \code{\link{ordered}} giving the source for 
      US unemployment:  
      \describe{
        \item{1800-1889}{Lebergott}
        \item{1890-1929}{Romer}
        \item{1930-1939}{Coen}
        \item{1940-present}{BLS}
      }
      
      Clearly, the more recent numbers should be 
      more accurate.  
    }
  }
}
\details{
  \code{rownames(USGDPpresidents) = Year}
}
\source{
  Louis Johnston and Samuel H. Williamson, 
  "What Was the U.S. GDP Then?", Measuring Worth, 
  accessed 2015-09-08.  (NOTE:  This came from 
  \code{https://www.measuringworth.org/usgdp/}.  
  this web link generally works as of 2020-02-09 
  but routinely returns a warning, e.g., 
  "SSL certificate problem".  The web site 
  seems to be good but not maintained to
  current security standards.)  

  Sarkees, Meredith Reid; Wayman, Frank (2010). 
  \href{https://correlatesofwar.org/data-sets/COW-war}{
  "The Correlates of War Project: COW War Data, 1816 - 
  2007 (v4.0)"}, accessed 2015-09-02.  
  
  Wikipedia, \href{https://en.wikipedia.org/wiki/List_of_wars_involving_the_United_States}{"List of wars involving the United States"}, 
  accessed 2015-09-13.  
  
  \href{https://en.wikipedia.org/wiki/Unemployment_in_the_United_States#Historical_unemployment_rate_charts}{Wikipedia, 
  "Unemployment in the United States"}.  See also \url{https://en.wikipedia.org/wiki/User_talk:Peace01234#Unemployment_Data}.  
  Accessed 2016-07-08.  
  
  Stanley Lebergott (1964). Manpower in Economic 
  Growth: The American Record since 1800. Pages 
  164-190. New York: McGraw-Hill.  Cited from 
  \href{https://en.wikipedia.org/wiki/Unemployment_in_the_United_States#Historical_unemployment_rate_charts}{Wikipedia, 
  "Unemployment in the United States"}, accessed 
  2016-07-08.  
  
  Christina Romer (1986). "Spurious Volatility in 
  Historical Unemployment Data", The Journal of 
  Political Economy, 94(1): 1-37.
  
  Robert M. Coen (1973) Labor Force and 
  Unemployment in the 1920's and 1930's: A 
  Re-Examination Based on Postwar Experience", 
  The Review of Economics and Statistics, 55(1): 
  46-55. 
  
  The unemployment data since 1940 are from 
  series \code{LNS14000000} from the Current
  Population Survey.  These data are available as 
  a monthly series from the 
  \href{https://www.bls.gov/cps/}{Current Population Survey of the Bureau of Labor Statistics}. 
  
  \href{http://www.yttwebzine.com/yesterday/2013/10/28/75757/population_13_colonies_chart}{Chuck Springston, 
  "Population of the 13 Colonies 1610-1790", 
  October 28, 2013}
}
%\references{}
\author{Spencer Graves}
%\seealso{}
\examples{
##
## GDP, Presidents and Wars 
##
data(USGDPpresidents)
(wars <- levels(USGDPpresidents$war))
nWars <- length(wars)
plot(realGDPperCapita/1000~Year, 
     USGDPpresidents, log='y', type='l', 
     ylab='average annual income (K$)', 
     las=1)     
abline(v=c(1929, 1933, 1945), lty='dashed')
text(1930, 2.5, "Hoover", srt=90, cex=0.9)
text(1939.5, 30, 'FDR', srt=90, cex=1.1, col='blue')

# label wars
(logGDPrange <- log(range(USGDPpresidents$realGDPperCapita, 
                    na.rm=TRUE)/1000))
(yrRange <- range(USGDPpresidents$Year))
(yrMid <- mean(yrRange))
for(i in 2:nWars){
  w <- wars[i]
  sel <- (USGDPpresidents$war==w)
  yrs <- range(USGDPpresidents$Year[sel])
  abline(v=yrs, lty='dotted', col='grey')
  yr. <- mean(yrs)
  w.adj <- (0.5 - 0.6*(yr.-yrMid)/diff(yrRange))
  logy <- (logGDPrange[1]+w.adj*diff(logGDPrange))
  y. <- exp(logy)
  text(yr., y., w, srt=90, col='red', cex=0.5)
}

##
## CPI v. GDPdeflator
## 
plot(GDPdeflator~CPI, USGDPpresidents, type='l', 
     log='xy')
     
##
## Unemployment 
##
plot(unemployment~Year, USGDPpresidents, type='l')

}
\keyword{datasets}
