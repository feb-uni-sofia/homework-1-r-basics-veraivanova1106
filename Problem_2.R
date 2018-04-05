# a)
xmin<- c(23.0, 20.5, 28.2, 20.3, 22.4, 17.2, 18.2)
xmax<- c(25.0, 22.8, 31.2, 27.3, 28.4, 20.2, 24.1)
dnames<-c("Mon","Tue","Wed","Thu","Fri","Sat","Sun")

# b)
dff<-xmax-xmin

# c) 
avgmin<-mean(xmin)
avgmax<-mean(xmax)

# d)
xmin[xmin<avgmin]
# e)
xmax[xmax>avgmax]

# f)
names(xmin)<-dnames
names(xmax)<-dnames

# g)
temperature<-data.frame(xmin,xmax)
# h)
temperature<-within(temperature, {
	xminFarenhait<-xmin*9/5+32
})
# i)
temperatureFarenhait<-data.frame(xminFarenhait=xmin*9/5+32,xmaxFarenhait=xmax*9/5+32)
# j)
tempFarenhaitdays<-data.frame(min_farenhait=xmin[seq(1:5)]*9/5+32,max_farenhait=xmax[seq(1:5)]*9/5+32)
tempFarenhaitdays2<-data.frame(min_farenhait2=xmin[seq(length(xmin)-2)]*9/5+32,max_farenhait2=xmax[seq(length(xmax)-2)]*9/5+32)

## Easier way to do the above

temperatures <- within(temperatures, {
  xminFahrenheit <- xmin * (9/5) + 32
  xmaxFahrenheit <- xmax * (9/5) + 32
})

temperaturesFahrenheit <- temeratures[, c('xminFahrenheit', 'xmaxFahrenheit)]

## Easier to subset the whole data.frame instead of 
## doing this for each vector used in its construction

temperaturesFahrenheit[1:5, ]
temperaturesFahrenheit[-(6:7), ]

