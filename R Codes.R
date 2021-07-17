library(ElemStatLearn)
y=nci
y=t(y)
View(y)
k=kmeans(y,14)
c=k$cluster

# lumping error
le=function(class,cluster)
{
k=0
n=length(class)
if(length(class)!=length(cluster))
{
break
}
for(i in 1:(n-1))
{
for(j in (i+1):n)
{
if((class[i]!=class[j])&(cluster[i]==cluster[j]))
{
k=k+1
}
}
}
return(k)
}
le(c(1,2,2),c(2,1,1))
le(c(1,2,2),c(1,1,1))

#splitting error

se=function(class,cluster)
{
k=0
n=length(class)
if(length(class)!=length(cluster))
{
break
}
for(i in 1:(n-1))
{
for(j in (i+1):n)
{
if((class[i]==class[j])&(cluster[i]!=cluster[j]))
{
k=k+1
}
}
}
return(k)
}
se(c(1,2,2),c(2,1,1))
se(c(1,2,2),c(4,5,6))

#(ii)
cl1=kmeans(y,14)$cluster
cl2=kmeans(y,14)$cluster
cl3=kmeans(y,14)$cluster
classes=rownames(y)
le(classes,cl1)
le(classes,cl2)
le(classes,cl3)
se(classes,cl1)
se(classes,cl2)
se(classes,cl3)


apply(table(classes,cl1),1,entropy)
apply(table(classes,cl2),1,entropy)
apply(table(classes,cl3),1,entropy)
cl1
cl2
cl3

pc=prcomp(scale(y,scale=FALSE))
v=(pc$sdev)^2
rho=cumsum(v)/sum(v)
plot(rho,type="b")
plot(pc,type="l")

signif(pc$rotation[,1:2],2)
biplot(pc)


plot(pc$x[,1:2],type="n")
text(pc$x[,1:2],classes,cex=0.5)


















































