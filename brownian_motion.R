number=50
vect=0
final=0
delta = 1000
x=seq(from=1/delta,to=1,by=1/delta)
for(j in 1:number){
  vect[1]=0
  for(i in 2:delta){
    vect[i]=rnorm(n=1,0,1/delta)+vect[i-1]
  }
  plot(x,vect,type='l',ylim=c(-0.06,0.06),col=j+1)
  par(new=T)
  final[j]=vect[1000]*vect[1000]
}

sum(final)/number
