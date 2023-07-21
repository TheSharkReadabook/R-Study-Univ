dist = cars[,2]
boxplot(dist, main='자동차 제동거리')


boxplot.stats(dist)

boxplot(state.x77[,'Population'])

boxplot(mpg~cyl, data = mtcars)

boxplot(mtcars$mpg~mtcars$am)

boxplot(Petal.Length~Species, data= iris, main='title')

boxplot(state.x77[,'Population']~state.region)

boxplot(mtcars$mpg)

boxplot(mtcars$mpg~mtcars$gear)

boxplot(mtcars$mpg~mtcars$vs)

boxplot(mtcars$mpg~mtcars$am)

grp = rep('high', nrow(mtcars))

grp[mtcars$wt < mean(mtcars$wt)] = 'low'
boxplot(mtcars$hp~grp)


boxplot(emotional~country, data= socsupport)

boxplot(emotional~gender, data=socsupport)

group3 = as.numeric(factor(socsupport$age))

color = rainbow(as.numeric(nlevels(socsupport$age)))

plot(socsupport[,c("emotionalsat","tangiblesat","age")], pch=c(group3), col = color)



pie(table(MplsStops$race))
pie(table(MplsStops$problem))
pie(table(MplsStops$personSearch))
pie(table(MplsStops$gender))

library(DAAG)
data(greatLakes)
ds = data.frame(year=1918:2009, greatLakes)

plot(Erie~year, data=ds, type='l')
plot(michHuron~year, data=ds, type='b', lty=5, col='red')



plot(ds$Erie~ds$year,col='red', type='b', ylim=c(173, 177.5))

lines(ds$michHuron~ds$year, col='green', type='b')

lines(ds$StClair~ds$year, col='blue', type='b')




boxplot(cfseal$weight)
boxplot(cfseal$heart)$out


young = subset(cfseal, mean(cfseal$weight) > cfseal$weight)
old = subset(cfseal, mean(cfseal$weight) <= cfseal$weight)


cf = cfseal

cf = ifelse(mean(cfseal$weight) > cfseal$weight, 'young', 
                  ifelse(mean(cfseal$weight) <= cfseal$weight, 'old','na'))


ds = cfseal
grp=rep('old',nrow(ds))
grp[ds$age<mean(ds$age)] = 'young'
boxplot(ds$weight~grp)



g = rep('low', nrow(cfseal))
g[cfseal$weight > boxplot.stats(cfseal)$stats[2]] = 'middle'
g[cfseal$weight < boxplot.stats(cfseal)$stats[4]] = 'high'
boxplot(cfseal$weight~g)

df = cfseal
summary(df$weight)
grp<-rep('low',nrow(df))
grp[df$weight>28.12]<-'middle'
grp[df$weight>68.38]<-'high'
boxplot(df$stomach~grp)


library(DAAG)
data(greatLakes)
ds = data.frame(greatLakes)

plot(Erie~michHuron, data=ds)
plot(greatLakes)

data(grog)

plot(grog$Beer, grog$Wine)


g = as.numeric(factor(grog$Country))
plot(grog[,c('Beer','Wine','Spirit')], col=color(c), pch=color)


