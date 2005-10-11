z=read.table(file="./databrut/Hayashi/Grilic.txt",header=T)
z$rns=factor(z$RNS,levels=c(0,1),labels=c('no','yes'))
z$rns80=factor(z$RNS80,levels=c(0,1),labels=c('no','yes'))
z$mrt=factor(z$MRT,levels=c(0,1),labels=c('no','yes'))
z$mrt80=factor(z$MRT80,levels=c(0,1),labels=c('no','yes'))
z$smsa=factor(z$SMSA,levels=c(0,1),labels=c('no','yes'))
z$smsa80=factor(z$SMSA80,levels=c(0,1),labels=c('no','yes'))
z$med=z$MED
z$iq=z$IQ
z$age=z$AGE
z$age80=z$AGE80
z$school=z$S
z$school80=z$S80
z$expr=z$EXPR
z$expr80=z$EXPR80
z$tenure=z$TENURE
z$tenure80=z$TENURE80
z$lw=z$LW
z$lw80=z$LW80
z$year=z$YEAR
z$kww=z$KWW
Griliches=subset(z,select=c(rns,rns80,mrt,mrt80,smsa,smsa80,med,iq,kww,year,age,age80,school,school80,expr,expr80,tenure,tenure80,lw,lw80))
save(file="./data/Griliches.rda",Griliches)
write.table(file="./datatxt/Griliches.txt",row.names=F,quote=F,Griliches)

z=read.table(file="./databrut/Hayashi/Mishkin.txt",header=T)
z=subset(z,select=c(pai1:cpi))
Mishkin=ts(z,frequency=12,start=c(1950,2))
save(file="./data/Mishkin.rda",Mishkin)
write.table(file="./datatxt/Mishkin.txt",row.names=F,quote=F,Mishkin)

z=read.table(file="./databrut/Hayashi/SumHes.txt",header=T)
y=read.table(file="./databrut/Hayashi/Country.txt",header=T)
z$country=factor(z$ID,labels=y$Country)
z$opec=factor(z$OPEC,labels=c('no','yes'))
z$com=factor(z$COM,labels=c('no','yes'))
SumHes=subset(z,select=c(year,country,opec,com,pop,gdp,sr))
save(file="./data/SumHes.rda",SumHes)
write.table(file="./datatxt/SumHes.txt",row.names=F,quote=F,SumHes)


z=read.table(file="./databrut/Hayashi/Pound.txt",header=T)
z$date=z$Date
z$s=z$S
z$f=z$F
z$s30=z$S30
Pound=subset(z,select=c(date:s30))
save(file="./data/Pound.rda",Pound)
write.table(file="./datatxt/Pound.txt",row.names=F,quote=F,Pound)

z=read.table(file="./databrut/Hayashi/Yen.txt",header=T)
z$date=z$Date
z$s=z$S
z$f=z$F
z$s30=z$S30
Yen=subset(z,select=c(date:s30))
save(file="./data/Yen.rda",Yen)
write.table(file="./datatxt/Yen.txt",row.names=F,quote=F,Yen)

z=read.table(file="./databrut/Hayashi/DM.txt",header=T)
z$date=z$Date
z$s=z$S
z$f=z$F
z$s30=z$S30
DM=subset(z,select=c(date:s30))
save(file="./data/DM.rda",DM)
write.table(file="./datatxt/DM.txt",row.names=F,quote=F,DM)


z=read.table(file="./databrut/Hayashi/LT.txt",header=T)
z$s=z$S
z$uswpi=z$USWPI
z$ukwpi=z$UKWPI
z=subset(z,select=c(s:ukwpi))
LT=ts(z,start=1791,frequency=1)
save(file="./data/LT.rda",LT)
write.table(file="./datatxt/LT.txt",row.names=F,quote=F,LT)

z=read.table(file="./databrut/Hayashi/Mpyr.txt",header=T)
Mpyr=ts(z,frequency=1,start=1900)
save(file="./data/Mpyr.rda",Mpyr)
write.table(file="./datatxt/Mpyr.txt",row.names=F,quote=F,Mpyr)
