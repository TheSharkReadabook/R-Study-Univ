# chapter 12


install.packages('treemap')
library(treemap)
data(GNI2014)
head(GNI2014)
treemap(GNI2014,
        index=c('continent','iso3'),
        vSize='population',
        vColor='GNI',
        type='value',
        bg.labels='yellow',
        titile='title'
        )

st = data.frame(state.x77)
st = data.frame(st, stname=rownames(st))

treemap(st,
        index=c('stname'),
        vSize='Population',
        vColor='Illiteracy',
        type='value',
        title='t'
        )

str(st)



boxplot(state.x77[,c('Income', 'Illiteracy')])


oz = data.frame(airquality$Ozone, airquality$Month)
oz = oz[complete.cases(oz),]
oz2 = data.frame(aggregate(oz$airquality.Ozone, by=list(oz$airquality.Month), median))
oz2

boxplot(Ozone~Month,data=airquality)

boxplot(Temp~Month,data=airquality)

install.packages('fmsb')
library(fmsb)

score = c(80,60,95,85,40)

max.score = rep(100,5)
min.score = rep(0,5)

ds = rbind(max.score, min.score, score)
ds = data.frame(ds)

colnames(ds) = c('국어','영어','수학','물리','음악')
ds

radarchart(ds)

maxs = rep(1, 4)
mins = rep(0,4)
point = c(0.6, 0.8, 0.9, 0.7, 0.5)
df = rbind(maxs, mins, point)
colnames(df) = c('A','B','C','D','E')
df = data.frame(df)

radarchart(df)

install.packages('carData')
library(carData)


pop = table(WVS$country)
tmp = subset(WVS, religion=='yes')
rel = table(tmp$country)
stat = rel / pop
stat = rbind(maxs, mins, rel / pop)
stat = data.frame(stat)
radarchart(stat)



library(ggplot2)

month2 = 1:6
rain = c(55,50,45,50,60,70)
df = data.frame(month2, rain)
df


ggplot(df, aes(x=month2, y=rain))+
  geom_bar(stat='identity',
         width = 0.7,
         fill='steelblue')+
        coord_flip()



ggplot(df, aes(x = month2, y = rain)) +
  geom_bar(stat = "identity")



ggplot(data=iris, aes(x=Petal.Length, y=Petal.Width), color=Species) +
  geom_point()


ggplot(iris, aes(y=Petal.Length)) + 
  geom_boxplot()

year = 1937:1960
cnt = as.vector(airmiles)
df = data.frame(year, cnt)
head(df)

ggplot(df, aes(x=year, y=cnt)) + 
  geom_line()


#12.1 12.4




st = data.frame(state.x77, state.region)
st = data.frame(st, stname=rownames(st))

treemap(st,
        index=c('state.region', 'stname'),
        vSize='Life.Exp',
        vColor='Murder',
        type='value'
        )

   

st2 = data.frame(st['Murder'],state.region)
head(st2)

aggregate(st2$Murder, by=list(st2$state.region), mean)

boxplot(Murder~state.region ,data=st2)

ggplot(st2, aes(y=Murder, x=state.region, fill='orange' )) +
  geom_boxplot()
  

#5번
st3 = data.frame(st['Illiteracy'], state.region)
avg = aggregate(st3$Illiteracy, by=list(st3$state.region), mean)
avg = avg[,2]
names(avg) = 1:length(levels(state.region))
odr = rank(-avg)
ggplot(st3, aes(x=state.region, y=Illiteracy)) +
  geom_boxplot(fill = heat.colors(length(levels(state.region)))[odr])
  

#6번
air = airquality[complete.cases(airquality),]

avg2 = aggregate(air$Solar.R, by=list(air$Month), mean)
avg2 = avg2[,2]
names(avg2) = 1:length(avg2)
odr = rank(-avg2)


ggplot(air, aes(x=factor(Month), y=Solar.R)) +
  geom_boxplot(fill=heat.colors(length(avg2))[odr])


ggplot(States, aes(x=region, y=pop))+
  geom_bar(stat='identity',
           fill=rainbow(length(States$region))
           )


ggplot(States, aes(y=dollars)) +
  geom_histogram(fill='green', color='blue')



ggplot(States, aes(x=SATV, y=SATM))+
  geom_point()


cor(States$SATV, States$SATM)



ESCPAC = subset(States, States$region == 'ESC' | States$region == 'PAC')

ggplot(ESCPAC, aes(x = SATM, y = SATV, color = region)) +
  geom_point()






ggplot(States, aes(x = region, y = pay)) +
  geom_boxplot(fill=rainbow(length(levels(States$region))))


ggplot(States, aes(x = region, y=percent))+
  geom_boxplot(fill=rainbow(length(levels(States$region))))+
  ggtitle('지역별 SAT 응시비율')



ggplot(Hartnagel, aes(x = year, y = tfr))+
  geom_line()












