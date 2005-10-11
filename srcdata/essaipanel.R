Gasoline=read.table(file="./databrut/Baltagi/Gasoline.dat",header=T)
n=18
T=19
K=4
listind=names(table(Gasoline$country))
listime=names(table(Gasoline$year))
Gasoline=Gasoline[,3:6]
listvar=names(Gasoline)
z=array(data=Gasoline,dim=c(n,T,K),dimnames=list(listind,listime,listvar))

