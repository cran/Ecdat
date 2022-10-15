# Ecdat 0.4-2 (Release date: 2022-10-13)
* Updated "terrorism" to 2020.  

# Ecdat 0.4-1 (Release date: 2022-07-01)
* Replaced non-breaking spaces that used Latin-1 encoding with " " in 4 "demoFiles/NIPA6.16*.csv" files, because the said non-breaking spaces were not valid in UTF-8 and were rejected by a development version of R.

# Ecdat 0.4-0 (Release date: 2022-06-14)
* Adds new datasets "USnewspapers"" and "USPS"" (US Postal Service) while adding federal government budget data to "USGDPpresidents".  

# Ecdat 0.3-9 (Release date:  2020-11-01)
* Deletes ~demoFiles/*_data.xls, because they were used to test Ecfun::financialDataFiles and Ecfun::readFinancialDataFiles, and those two functions were removed, because they used gdata, which was not being maintained, and the work required to maintain them exceeded the current need of the maintainer.  

# Ecdat 0.3-6 (Release date: 2020-02-08)
* Adds variables popM, popYr, GDP_B, and GDPyr to data set "nuclearWeaponStates".  

# Ecdat 0.3-5 (Release date: 2019-12-05)
* Corrects the description of Crime$density to read, "hundreds of people per square mile" from "people per square mile".  Thanks to Yungfong "Frank" Tang for identifying this error and confirming the needed correction.  

# Ecdat 0.3-4 (Release date: 2019-11-05)
* Adds variable 'firstTestYr' to 'nuclearWeaponStates'.  It also corrects an error in the 'Mroz' data set, in that "work" had the names of the levels incorrectly swapped.  

# Ecdat 0.3-3 
* Adds data set "nuclearWeaponStates", which might be used to model the probability distribution of the time to the next new nuclear weapon state.  