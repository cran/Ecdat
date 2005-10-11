z=read.table(file="./databrut/Stock/Caschool.txt",header=T)
Caschool=subset(z,select=c(distcod:mathscr))
save(file="./data/Caschool.rda",Caschool)
write.table(file="./datatxt/Caschool.txt",row.names=F,quote=F,Caschool)

z=read.table(file="./databrut/Stock/Cig8595.txt",header=T)
Cigarette=z
save(file="./data/Cigarette.rda",Cigarette)
write.table(file="./datatxt/Cigarette.txt",row.names=F,quote=F,Cigarette)

z=read.table(file="./databrut/Stock/CPSch3.txt",header=T)
z$sexe=factor(z$sex,levels=c(1,2),labels=c('male','female'))
z$ahe=z$ahe98
CPSch3=subset(z,select=c(year,ahe,sexe))
save(file="./data/CPSch3.rda",CPSch3)
write.table(file="./datatxt/CPSch3.txt",row.names=F,quote=F,CPSch3)

z=read.table(file="./databrut/Stock/Journals.txt",header=T)
z$society=factor(z$society,levels=c(0,1),labels=c('no','yes'))
Journals=z
save(file="./data/Journals.rda",Journals)
write.table(file="./datatxt/Journals.txt",row.names=F,quote=F,Journals)


z=read.table(file="./databrut/Stock/Macrodat.txt",header=T)
z=subset(z,select=c(lhur:gdpjp))
Macrodat=ts(z,frequency=4,start=c(1959,1))
save(file="./data/Macrodat.rda",Macrodat)
write.table(file="./datatxt/Macrodat.txt",row.names=F,quote=F,Macrodat)

z=read.table(file="./databrut/Stock/MCAS.txt",header=T)
MCAS=z
save(file="./data/MCAS.rda",MCAS)
write.table(file="./datatxt/MCAS.txt",row.names=F,quote=F,MCAS)

z=read.table(file="./databrut/Stock/Oj.txt",header=T)
z=subset(z,select=c(priceoj:fdd))
Orange=ts(z,frequency=12,start=c(1948,1))
save(file="./data/Orange.rda",Orange)
write.table(file="./datatxt/Orange.txt",row.names=F,quote=F,Orange)

z=read.table(file="./databrut/Stock/hdma.txt",header=T,sep=";",dec=",")
z$dir=z$s46/100
z$hir=z$s45/100
z$lvr=z$s6/z$s50
z$ccs=z$s43
z$mcs=z$s42
z$pbcr=z$s44
z$pbcr=factor(z$pbcr,levels=c(0,1),labels=c('no','yes'))
z$dmi=factor(z$s53,levels=c(0,1),labels=c('no','yes'))

z$self=z$s27a
z$self=factor(z$self,levels=c(0,1),labels=c('no','yes'))
z$single=recode(z$s23a,"'M'=0;else=1",as.factor.result=F)
z$single=factor(z$single,levels=c(0,1),labels=c('no','yes'))
z$comdominiom=recode(z$s51,"1=1;else=0")
z$condominiom=factor(z$comdominiom,levels=c(0,1),labels=c('no','yes'))
z$black=recode(z$s13,"'3'=1;else=0",as.factor.result=F)
z$black=factor(z$black,levels=c(0,1),labels=c('no','yes'))
z$deny=recode(z$s7,"'3'=1;else=0",as.factor.result=F)
z$deny=factor(z$deny,levels=c(0,1),labels=c('no','yes'))

z$school=as.numeric( (z$school>8) & (z$school<100) )
z$unemp=z$uria
z$mlvr=(z$lvr>=.8) & (z$lvr<=.95)
z$hlvr=(z$lvr>=.95) 
Hdma=subset(z,select=c(dir,hir,lvr,ccs,mcs,pbcr,dmi,self,single,uria,comdominiom,black,deny))
save(file="./data/Hdma.rda",Hdma)
write.table(file="./datatxt/Hdma.txt",row.names=F,quote=F,Hdma)

z=read.table(file="./databrut/Stock/fatality.txt",header=T,sep=";",dec=",")
z=subset(z,select=c(state,year,mrall,beertax,mlda,jaild,comserd,vmiles,unrate,perinc))
names(z)
z$vmiles=z$vmiles/1000
z$mrall=z$mrall*10000
z$jaild=factor(z$jaild,levels=c(0,1),labels=c('no','yes'))
z$comserd=factor(z$comserd,levels=c(0,1),labels=c('no','yes'))

# summary(lm(I(mrall*10000)~beertax+mlda+I(jaild+comserd)+unrate+I(vmiles/1000)+log(perinc)+factor(state)+factor(year),data=z))
Fatality=z
save(file="./data/Fatality.rda",Fatality)
write.table(file="./datatxt/Fatality.txt",row.names=F,quote=F,Fatality)

z=read.table(file="./databrut/Stock/star.txt",header=T,sep=";",dec=",")
z$race=z$white+2*z$black+3*z$other
z$race=factor(z$race,levels=c(1,2,3),labels=c("white","black","other"))
z$sexe=factor(z$boy,levels=c(0,1),labels=c("girl","boy"))
z$classk=z$sck+2*z$rak
z$class1=z$sc1+2*z$ra1
z$class2=z$sc2+2*z$ra2
z$class3=z$sc3+2*z$ra3
z$classk=factor(z$classk,levels=c(0,1,2),labels=c('regular','small.class','regular.with.aide'))
z$class1=factor(z$class1,levels=c(0,1,2),labels=c('regular','small.class','regular.with.aide'))
z$class2=factor(z$class2,levels=c(0,1,2),labels=c('regular','small.class','regular.with.aide'))
z$class3=factor(z$class3,levels=c(0,1,2),labels=c('regular','small.class','regular.with.aide'))
z$freelunk=factor(z$freelunk,levels=c(0,1),labels=c('no','yes'))
z$freelun1=factor(z$freelun1,levels=c(0,1),labels=c('no','yes'))
z$freelun2=factor(z$freelun2,levels=c(0,1),labels=c('no','yes'))
z$freelun3=factor(z$freelun3,levels=c(0,1),labels=c('no','yes'))
zk=subset(z,select=c(tmathssk,treadssk,classk,totexpk,sexe,freelunk,race,schidkn))
z1=subset(z,select=c(tmathss1,treadss1,class1,totexp1,sexe,freelun1,race,schid1n))
z2=subset(z,select=c(tmathss2,treadss2,class2,totexp2,sexe,freelun2,race,schid2n))
z3=subset(z,select=c(tmathss3,treadss3,class3,totexp3,sexe,freelun3,race,schid3n))
Star=na.omit(zk)
save(file="./data/Star.rda",Star)
write.table(file="./datatxt/Star.txt",row.names=F,quote=F,Star)
