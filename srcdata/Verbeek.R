z=read.table(file="./databrut/Verbeek/Airq.txt",header=T)
z$coas=factor(z$coas,levels=c(0,1),labels=c('no','yes'))
Airq=z
save(file="./data/Airq.rda",Airq)
write.table(file="./datatxt/Airq.txt",row.names=F,quote=F,Airq)

z=read.table(file="./databrut/Verbeek/Housing.txt",header=T)
z$driveway=factor(z$driveway,levels=c(0,1),labels=c('no','yes'))
z$recroom=factor(z$recroom,levels=c(0,1),labels=c('no','yes'))
z$fullbase=factor(z$fullbase,levels=c(0,1),labels=c('no','yes'))
z$gashw=factor(z$gashw,levels=c(0,1),labels=c('no','yes'))
z$airco=factor(z$airco,levels=c(0,1),labels=c('no','yes'))
z$prefarea=factor(z$prefarea,levels=c(0,1),labels=c('no','yes'))
Housing=z
save(file="./data/Housing.rda",Housing)
write.table(file="./datatxt/Housing.txt",row.names=F,quote=F,Housing)

z=read.table(file="./databrut/Verbeek/NaturalPark.txt",header=T)
z$answers=factor(z$DEPVAR,levels=c(1,2,3,4),labels=c('nn','ny','yn','yy'))
z$bid1=z$BID1
z$bidh=z$BIDH
z$bidl=z$BIDL
z$age=z$AGE
z$income=z$INCOME
z$sexe=factor(z$FEMALE,levels=c(0,1),labels=c('male','female'))
NaturalPark=subset(z,select=c(bid1,bidh,bidl,answers,age,sexe,income))
save(file="./data/NaturalPark.rda",NaturalPark)
write.table(file="./datatxt/NaturalPark.txt",row.names=F,quote=F,NaturalPark)

z=read.table(file="./databrut/Verbeek/Tobaccobis.txt",header=T)
z$occup=z$bluecol+2*z$whitecol
z$occupation=factor(z$occup,levels=c(0,1,2),labels=c('inactself','bluecol','whitecol'))
z$region=z$flanders+2*z$walloon;
z$region=factor(z$region,levels=c(0,1,2),labels=c('brussels','flanders','walloon'))
z$stobacco=z$share2
z$salcohol=z$share1
Tobacco=subset(z,select=c(occupation,region,nkids,nkids2,nadults,lnx,stobacco,salcohol,age))
save(file="./data/Tobacco.rda",Tobacco)
write.table(file="./datatxt/Tobacco.txt",row.names=F,quote=F,Tobacco)

z=read.table(file="./databrut/Verbeek/males.dat",header=T)
attach(z)
race=z$black+2*z$hisp
race=factor(race,levels=c(0,1,2),labels=c('other','black','hisp'))
health=recode(z$hlth,"0='no';1='yes'")
industry=ag+2*min+3*con+4*trad+5*tra+6*fin+7*bus+8*per+9*ent+10*man+11*pro+12*pub
industry=factor(industry,levels=1:12,labels=c("Agricultural","Mining","Construction","Trade","Transportation","Finance","Business_and_Repair_Service","Personal_Service","Entertainment","Manufacturing","Professional_and_Related Service","Public_Administration"))
occupation=OCC1+2*OCC2+3*OCC3+4*OCC4+5*OCC5+6*OCC6+7*OCC7+8*OCC8+9*OCC9
occupation=factor(occupation,levels=1:9,labels=c("Professional, Technical_and_kindred","Managers, Officials_and_Proprietors","Sales_Workers","Clerical_and_kindred","Craftsmen, Foremen_and_kindred","Operatives_and_kindred","Laborers_and_farmers","Farm_Laborers_and_Foreman","Service_Workers"))
residence=rur+2*ne+3*nc+4*s
residence=factor(residence,levels=1:4,labels=c("rural_area","north_east","nothern_central","south"))
maried=recode(mar,"0='no';1='yes'")
union=recode(union,"0='no';1='yes'")
Males=data.frame(nr,year,school,exper,union,race,maried,health,wage,industry,occupation,residence)
save(file="./data/Males.rda",Males)
write.table(file="./datatxt/Males.txt",row.names=F,quote=F,Males)
rm(list=ls())

z=read.table(file="./databrut/Verbeek/benefits.txt",header=T)
attach(z)
joblost=slack+2*abol+3*seasonal+4*(1-slack)*(1-abol)*(1-seasonal)
joblost=recode(joblost,"1='slack_work';2='position_abolished';3='seasonal_job_ended';4='other'")
nwhite=recode(nwhite,"1='yes';0='no'")
school12=recode(school12,"1='yes';0='no'")
sexe=recode(male,"1='male';0='female'")
bluecol=recode(bluecol,"1='yes';0='no'")
smsa=recode(smsa,"1='yes';0='no'")
married=recode(married,"1='yes';0='no'")
dkids=recode(dkids,"1='yes';0='no'")
dykids=recode(dykids,"1='yes';0='no'")
head=recode(head,"1='yes';0='no'")
ui=recode(y,"1='yes';0='no'")
Benefits=data.frame(stateur,statemb,state,age,tenure,joblost,nwhite,school12,sexe,bluecol,smsa,married,dkids,dykids,yrdispl,rr,head,ui)
save(file="./data/Benefits.rda",Benefits)
write.table(file="./datatxt/Benefits.txt",row.names=F,quote=F,Benefits)

z=read.table(file="./databrut/Verbeek/bwages.dat",header=T)
attach(z)
wage=WAGE
educ=EDUC
exper=EXPER
sexe=factor(MALE,"1='male';0='female'")
Bwages=data.frame(wage,educ,exper,sexe)
save(file="./data/Bwages.rda",Bwages)
write.table(file="./datatxt/Bwages.txt",row.names=F,quote=F,Bwages)

z=read.table(file="./databrut/Verbeek/capm2.dat",header=T)
attach(z)
rfood=RFOOD
rdur=RDUR
rcon=RCON
rmrf=RMRF
rf=RF
Capm2=data.frame(rfood,rdur,rcon,rmrf,rf)
save(file="./data/Capm2.rda",Capm2)
write.table(file="./datatxt/Capm2.txt",row.names=F,quote=F,Capm2)

Clothing=read.table(file="./databrut/Verbeek/clothing.txt",header=T)
save(file="./data/Clothing.rda",Clothing)
write.table(file="./datatxt/Clothing.txt",row.names=F,quote=F,Clothing)

Forward2=read.table(file="./databrut/Verbeek/forward2.dat",header=T)
save(file="./data/Forward2.rda",Forward2)
write.table(file="./datatxt/Forward2.txt",row.names=F,quote=F,Forward2)

Garch=read.table(file="./databrut/Verbeek/garch.dat",header=T)
Garch$day=recode(Garch$day,"1='monday';2='tuesday';3='wednesday';4='thursday';5='friday'")
save(file="./data/Garch.rda",Garch)
write.table(file="./datatxt/Garch.txt",row.names=F,quote=F,Garch)

Icecream=read.table(file="./databrut/Verbeek/icecream.dat",header=T)[,1:4]
save(file="./data/Icecream.rda",Icecream)
write.table(file="./datatxt/Icecream.txt",row.names=F,quote=F,Icecream)

z=read.table(file="./databrut/Verbeek/income.dat",header=T)
IncomeUK=ts(z,start=c(1971,1),freq=4)
save(file="./data/IncomeUK.rda",IncomeUK)
write.table(file="./datatxt/IncomeUK.txt",row.names=F,quote=F,IncomeUK)

z=read.table(file="./databrut/Verbeek/irates.dat",header=T)
Irates=ts(z,start=c(1946,12),freq=12)
save(file="./data/Irates.rda",Irates)
write.table(file="./datatxt/Irates.txt",row.names=F,quote=F,Irates)

Labour2=read.table(file="./databrut/Verbeek/labour2.dat",header=T)
save(file="./data/Labour2.rda",Labour2)
write.table(file="./datatxt/Labour2.txt",row.names=F,quote=F,Labour2)

MoneyUS=read.table(file="./databrut/Verbeek/moneyus.txt",header=T)[,-1]
MoneyUS=ts(MoneyUS,start=c(1954,1),frequency=4)
save(file="./data/MoneyUS.rda",MoneyUS)
write.table(file="./datatxt/MoneyUS.txt",row.names=F,quote=F,MoneyUS)

z=read.table(file="./databrut/Verbeek/patents.dat",header=T)
attach(z)
p91=P91
p90=P90
lr91=LR91
lr90=LR90
industry=1*AEROSP+2*CHEMIST+3*COMPUTER+4*MACHINES+5*VEHICLES
industry=recode(industry,"1='aerospace';2='chemistry';3='computer';4='machinery_and_instruments';5='motor_vehicules';else='other'",as.factor.result=T)
country=JAPAN+2*US
country=recode(country,"1='japan';2='us';else='other'",as.factor.result=T)
Patents=data.frame(p91,p90,lr91,lr90,industry,country)
save(file="./data/Patents.rda",Patents)
write.table(file="./datatxt/Patents.txt",row.names=F,quote=F,Patents)

z=read.table(file="./databrut/Verbeek/pe.dat",header=T)
attach(z)
price=PRICE
earnings=EARNINGS
PE=ts(data.frame(price,earnings),start=1800,frequency=1)
save(file="./data/PE.rda",PE)
write.table(file="./datatxt/PE.txt",row.names=F,quote=F,PE)

z=read.table(file="./databrut/Verbeek/ppp.txt",header=T)[,c(1:2,4:6)]
attach(z)
PPP=ts(z,c(1981,1),frequency=12)
save(file="./data/PPP.rda",PPP)
write.table(file="./datatxt/PPP.txt",row.names=F,quote=F,PPP)

z=read.table(file="./databrut/Verbeek/pricing.dat",header=T)
attach(z)
Pricing=ts(z,c(1959,2),frequency=12)
save(file="./data/Pricing.rda",Pricing)
write.table(file="./datatxt/Pricing.txt",row.names=F,quote=F,Pricing)

SP500=read.table(file="./databrut/Verbeek/sp500.dat",header=T)
save(file="./data/SP500.rda",SP500)
write.table(file="./datatxt/SP500.txt",row.names=F,quote=F,SP500)

z=read.table(file="./databrut/Verbeek/wages1.dat",header=T)
attach(z)
exper=EXPER
sexe=recode(MALE,"1='male';0='female'")
school=SCHOOL
wage=WAGE
Wages1=data.frame(exper,sexe,school,wage)
save(file="./data/Wages1.rda",Wages1)
write.table(file="./datatxt/Wages1.txt",row.names=F,quote=F,Wages1)


z=read.table(file="./databrut/Verbeek/schooling.txt",header=T,na.strings=".")
attach(z)
smsa66=recode(smsa66,"1='yes';0='no'",as.factor.result=T)
smsa76=recode(smsa76,"1='yes';0='no'",as.factor.result=T)
nearc2=recode(nearc2,"1='yes';0='no'",as.factor.result=T)
nearc4=recode(nearc4,"1='yes';0='no'",as.factor.result=T)
nearc4a=recode(nearc4a,"1='yes';0='no'",as.factor.result=T)
nearc4b=recode(nearc4b,"1='yes';0='no'",as.factor.result=T)
nodaded=recode(nodaded,"1='yes';0='no'",as.factor.result=T)
nomomed=recode(nodaded,"1='yes';0='no'",as.factor.result=T)
momdad14=recode(momdad14,"1='yes';0='no'",as.factor.result=T)
sinmom14=recode(sinmom14,"1='yes';0='no'",as.factor.result=T)
step14=recode(step14,"1='yes';0='no'",as.factor.result=T)
south66=recode(south66,"1='yes';0='no'",as.factor.result=T)
south76=recode(south76,"1='yes';0='no'",as.factor.result=T)
black=recode(black,"1='yes';0='no'",as.factor.result=T)
enroll76=recode(enroll76,"1='yes';0='no'",as.factor.result=T)
mar76=recode(mar76,"1='yes';0='no'",as.factor.result=T)
libcrd14=recode(libcrd14,"1='yes';0='no'",as.factor.result=T)
Schooling=data.frame(smsa66,smsa76,nearc2,nearc4,nearc4a,nearc4b,ed76,ed66,age76,daded,nodaded,momed,nomomed,momdad14,sinmom14,step14,south66,south76,lwage76,famed,black,wage76,enroll76,kww,iqscore,mar76,libcrd14,exp76)
save(file="./data/Schooling.rda",Schooling)
write.table(file="./datatxt/Schooling.txt",row.names=F,quote=F,Schooling)
