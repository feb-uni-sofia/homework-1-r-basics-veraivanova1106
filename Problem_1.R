## NOTE: readability: leave some blank linkes between the code to make it more readable

#a)  Create a vector with the numbers 4, 1, 1, 4 called x
x<- c(4,1,1,4)
#b)  Create a second vector called y with the numbers 1, 4
y<- c(1,4)
#c)The two vectors have different sizes so the shorter one(y) gets repeated so it turns into (1,4,1,4)
x-y
#d)
s<- c(x,y)
#e)
rep(s,10)
z<-rep(s,10)
length(z)
#f)
rep(s, each=3)
#g)
seq(7,21,by=1)
lseq<-seq(7,21,by=1)
7:21
#h)
length(lseq)
