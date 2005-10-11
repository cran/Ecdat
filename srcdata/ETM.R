z=read.table(file="./databrut/ETM/Consumption.txt",header=T)
z$yd=z$YD
z$ce=z$CE
z=subset(z,select=c(yd,ce))
Consumption=ts(z,frequency=4,start=c(1947,1))
save(file="./data/Consumption.rda",Consumption)
write.table(file="./datatxt/Consumption.txt",row.names=F,quote=F,Consumption)

z=read.table(file="./databrut/ETM/CRSPday.txt",header=T)
z=subset(z,select=c(year:crsp))
CRSPday=ts(z,frequency=365,start=c(1969,01,03))
save(file="./data/CRSPday.rda",CRSPday)
write.table(file="./datatxt/CRSPday.txt",row.names=F,quote=F,CRSPday)

z=read.table(file="./databrut/ETM/Count.txt",header=T)
Doctor=subset(z,select=c(doctor:health))
save(file="./data/Doctor.rda",Doctor)
write.table(file="./datatxt/Doctor.txt",row.names=F,quote=F,Doctor)

z=read.table(file="./databrut/ETM/CRSPmon.txt",header=T)
z=subset(z,select=c(ge:crsp))
CRSPmon=ts(z,freq=12,start=c(1969,1))
save(file="./data/CRSPmon.rda",CRSPmon)
write.table(file="./datatxt/CRSPmon.txt",row.names=F,quote=F,CRSPmon)

z=read.table(file="./databrut/ETM/Earnings.txt",header=T)
z$age=z$g1+2*z$g2+3*z$g3
z$age=factor(z$age,levels=c(1,2,3),labels=c('g1','g2','g3'))
Earnings=subset(z,select=c(age,y))
save(file="./data/Earnings.rda",Earnings)
write.table(file="./datatxt/Earnings.txt",row.names=F,quote=F,Earnings)


z=read.table(file="./databrut/ETM/Hstarts.txt",header=T)
z=subset(z,select=c(hs:hssa))
z$hssa[1:24]=NA
Hstarts=ts(z,start=c(1960,1),frequency=4)
save(file="./data/Hstarts.rda",Hstarts)
write.table(file="./datatxt/Hstarts.txt",row.names=F,quote=F,Hstarts)


z=read.table(file="./databrut/ETM/Intratesm.txt",header=T)
z=subset(z,select=c(rff:rt10))
Intratesm=ts(z,frequency=12,start=c(1955,1))
save(file="./data/Intratesm.rda",Hstarts)
write.table(file="./datatxt/Intratesm.txt",row.names=F,quote=F,Intratesm)


z=read.table(file="./databrut/ETM/Intratesq.txt",header=T)
z=subset(z,select=c(rff:rt10))
Intratesq=ts(z,frequency=4,start=c(1955,1))
save(file="./data/Intratesq.rda",Hstarts)
write.table(file="./datatxt/Intratesq.txt",row.names=F,quote=F,Intratesq)

z=read.table(file="./databrut/ETM/Money.txt",header=T)
z=subset(z,select=c(m:r))
Money=ts(z,frequency=4,start=c(1967,1))
save(file="./data/Money.rda",Money)
write.table(file="./datatxt/Money.txt",row.names=F,quote=F,Money)

z=read.table(file="./databrut/ETM/MW.txt",header=T)
z$rdi=z$x2
z$trate=z$x3
z=subset(z,select=c(rdi,trate))
MW=ts(z,frequency=4,start=c(1963,3))
save(file="./data/MW.rda",MW)
write.table(file="./datatxt/MW.txt",row.names=F,quote=F,MW)

z=read.table(file="./databrut/ETM/Participation.txt",header=T)
z=subset(z,select=c(lfp:foreign))
z$foreign=factor(z$foreign,levels=c(0,1),labels=c('no','yes'))
z$lfp=factor(z$lfp,levels=c(0,1),labels=c('no','yes'))
Participation=z
save(file="./data/Participation.rda",Participation)
write.table(file="./datatxt/Participation.txt",row.names=F,quote=F,Participation)


z=read.table(file="./databrut/ETM/Tbrate.txt",header=T)
z=subset(z,select=c(r:pi))
Tbrate=ts(z,frequency=4,start=c(1950,1))
save(file="./data/Tbrate.rda",Tbrate)
write.table(file="./datatxt/Tbrate.txt",row.names=F,quote=F,Tbrate)
