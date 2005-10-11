z=read.table(file="./databrut/Greene/Accident.txt",header=T)
z$type=factor(z$Type,levels=seq(1,5,1),labels=c('A','B','C','D','E'))
z$constr=z$T6064+2*z$T6569+3*z$T7074+4*z$T7579
z$constr=factor(z$constr,levels=seq(1,4,1),labels=c('C6064','C6569','C7074','C7579'))
z$operate=factor(z$O7579,levels=c(0,1),labels=c('O6074','O7579'))
z$acc=z$Acc
z$months=z$Months
Accident=subset(z,select=c(type,constr,operate,months,acc))
save(file="./data/Accident.rda",Accident)
write.table(file="./datatxt/Accident.txt",row.names=F,quote=F,Accident)

z=read.table(file="./databrut/Greene/Nerlove.txt",header=T)
Nerlove=subset(z,select=c(cost:sf))
save(file="./data/Nerlove.rda",Nerlove)
write.table(file="./datatxt/Nerlove.txt",row.names=F,quote=F,Nerlove)

z=read.table(file="./databrut/Greene/Airline.txt",header=T)
z$airline=z$I
z$year=z$T
z$cost=z$C
z$output=z$Q
z$pf=z$PF
z$lf=z$LF
Airline=subset(z,select=c(airline:lf))
save(file="./data/Airline.rda",Airline)
write.table(file="./datatxt/Airline.txt",row.names=F,quote=F,Airline)

z=read.table(file="./databrut/Greene/Electric.txt",header=T)
Electricity=subset(z,select=c(cost:sf))
save(file="./data/Electricity.rda",Electricity)
write.table(file="./datatxt/Electricity.txt",row.names=F,quote=F,Electricity)

z=read.table(file="./databrut/Greene/Metal.txt",header=T)
Metal=subset(z,select=c(va:capital))
save(file="./data/Metal.rda",Metal)
write.table(file="./datatxt/Metal.txt",row.names=F,quote=F,Metal)


z=read.table(file="./databrut/Greene/ModeChoice.txt",header=T)
ModeChoice=z
save(file="./data/ModeChoice.rda",ModeChoice)
write.table(file="./datatxt/ModeChoice.txt",row.names=F,quote=F,ModeChoice)

z=read.table(file="./databrut/Greene/ManufCost.txt",header=T)
z=subset(z,select=c(cost:pm))
ManufCost=ts(z,frequency=1,start=1947)
save(file="./data/ManufCost.rda",ManufCost)
write.table(file="./datatxt/ManufCost.txt",row.names=F,quote=F,ManufCost)

z=read.table(file="./databrut/Greene/Strike.txt",header=T)
Strike=z
save(file="./data/Strike.rda",Strike)
write.table(file="./datatxt/Strike.txt",row.names=F,quote=F,Strike)

z=read.table(file="./databrut/Greene/Solow.txt",header=T)
z=subset(z,select=c(q:A))
Solow=ts(z,start=1909,frequency=1)
save(file="./data/Solow.rda",Solow)
write.table(file="./datatxt/Solow.txt",row.names=F,quote=F,Solow)

z=read.table(file="./databrut/Greene/Fair.txt",header=T)
z$sexe=factor(z$Z1,levels=c(0,1),labels=c('female','male'))
z$age=z$Z2
z$ym=z$Z3
z$child=factor(z$Z4,levels=c(0,1),labels=c('no','yes'))
z$religious=z$Z5
z$education=z$Z6
z$occupation=z$Z7
z$rate=z$Z8
z$nbaffairs=z$Y
z=subset(z,select=c(sexe,age,ym,child,religious,education,occupation,rate,nbaffairs))
Fair=z
save(file="./data/Fair.rda",Fair)
write.table(file="./datatxt/Fair.txt",row.names=F,quote=F,Fair)

z=read.table(file="./databrut/Greene/TranspEq.txt",header=T)
TranspEq=z
save(file="./data/TranspEq.rda",TranspEq)
write.table(file="./datatxt/TranspEq.txt",row.names=F,quote=F,TranspEq)

z=read.table(file="./databrut/Greene/Klein.txt",header=T)
z$cons=z$C
z$profit=z$P
z$privwage=z$Wp
z$inv=z$I
z$lcap=z$K1
z$gnp=z$X
z$pubwage=z$Wg
z$govspend=z$G
z$taxe=z$T
z=subset(z,select=c(cons:taxe))
Klein=ts(z,frequency=1,start=c(1920))
save(file="./data/Klein.rda",Klein)
write.table(file="./datatxt/Klein.txt",row.names=F,quote=F,Klein)


z=read.table(file="./databrut/Greene/Longley.txt",header=T)
z$employ=z$Employ
z$price=z$Price
z$gnp=z$GNP
z$armed=z$Armed
z=subset(z,select=c(employ:armed))
Longley=ts(z,frequency=1,start=1947)
save(file="./data/Longley.rda",Longley)
write.table(file="./datatxt/Longley.txt",row.names=F,quote=F,Longley)

z=read.table(file="./databrut/Greene/MunExp.txt",header=T)
MunExp=z
save(file="./data/MunExp.rda",MunExp)
write.table(file="./datatxt/MunExp.txt",row.names=F,quote=F,MunExp)

z=read.table(file="./databrut/Greene/Mroz.txt",header=T)
z$work=factor(z$LFP,levels=c(0,1),labels=c('yes','no'))
z$hoursw=z$WHRS
z$child6=z$KL6
z$child618=z$K618
z$agew=z$WA
z$educw=z$WE
z$hearnw=z$WW
z$wagew=z$RPWG
z$hoursh=z$HHRS
z$ageh=z$HA
z$educh=z$HE
z$wageh=z$HW
z$income=z$FAMINC
z$educwm=z$WMED
z$educwf=z$WFED
z$unemprate=z$UN
z$city=factor(z$CIT,levels=c(0,1),labels=c('no','yes'))
z$experience=z$AX
Mroz=subset(z,select=c(work:experience))
save(file="./data/Mroz.rda",Mroz)
write.table(file="./datatxt/Mroz.txt",row.names=F,quote=F,Mroz)
