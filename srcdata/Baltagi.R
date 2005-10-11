library(car)

Gasoline=read.table(file="./databrut/Baltagi/Gasoline.dat",header=T)
save(file="./data/Gasoline.rda",Gasoline)
write.table(file="./datatxt/Gasoline.txt",row.names=F,quote=F,Gasoline)

Produc=read.table(file="./databrut/Baltagi/PRODUC.prn",header=T)
Produc=Produc[,c(1,3:11)]
save(file="./data/Produc.rda",Produc)
write.table(file="./datatxt/Produc.txt",row.names=F,quote=F,Produc)

z=read.table(file="./databrut/Baltagi/wages.txt",header=T,sep=";",dec=",")
attach(z)
exp=EXP
wks=WKS
bluecol=recode(OCC,"0='no';1='yes'",as.factor.result=T)
ind=IND
south=recode(SOUTH,"0='no';1='yes'",as.factor.result=T)
smsa=recode(SMSA,"0='no';1='yes'",as.factor.result=T)
married=recode(MS,"0='no';1='yes'",as.factor.result=T)
sexe=recode(FEM,"0='male';1='female'",as.factor.result=T)
union=recode(UNION,"0='no';1='yes'",as.factor.result=T)
ed=ED
black=recode(BLK,"0='no';1='yes'",as.factor.result=T)
lwage=LWAGE
Wages=data.frame(exp,wks,bluecol,ind,south,smsa,married,sexe,union,ed,black,lwage)
detach(z)
save(file="./data/Wages.rda",Wages)
write.table(file="./datatxt/Wages.txt",row.names=F,quote=F,Wages)

Cigar=read.table(file="./databrut/Baltagi/Cigar.txt",header=T)
save(file="./data/Cigar.rda",Cigar)
write.table(file="./datatxt/Cigar.txt",row.names=F,quote=F,Cigar)

Hedonic=read.table(file="./databrut/Baltagi/Hedonic.txt",header=T,sep=";",dec=",")
Hedonic$chas=recode(Hedonic$chas,"0='no';1='yes'",as.factor.result=T)
save(file="./data/Hedonic.rda",Hedonic)
write.table(file="./datatxt/Hedonic.txt",row.names=F,quote=F,Hedonic)

Grunfeld=read.table(file="./databrut/Baltagi/Grunfeld.fil",header=T)
save(file="./data/Grunfeld.rda",Grunfeld)
write.table(file="./datatxt/Grunfeld.txt",row.names=F,quote=F,Grunfeld)

