favorite = c('1','2','4','5')

table(favorite)


ds = table(favorite)
ds
barplot(ds, main='favorite', names=c('a','b','c','d'))

irsple = table(iris$Sepal.Length)
barplot(irsple, main='irisple', xlab='x축', ylab='y축', horiz = TRUE, las=1)


blood = c('a','b','b','ab','o','a','o','a','b','a')
ds = table(blood)
barplot(ds, main='blood distribution', xlab='type', ylab='freqency',col='purple', horiz = TRUE, names = c('A','B','O','AB'), las=1)

ds = rbind(age.A,age.B,age.C)
colnames(ds) = c('1970','1990','2010','2030','2050')
ds


barplot(ds, main='인구추정', beside = TRUE, legend.text=c('0~14세','15~64세','65세 이상'), args.legend = list(x='topright',bty='n',inset=c(-0.25, 0)))

par(mfrow=c(1,1), mar=c(5,5,5,7))

par(mfrow=c(1,1), mar=c(5,4,4,2)+0.1)

barplot(ds, main='최근 5일간 과일 판매량', beside = TRUE, legend.txt=c('수박','포도','참외'), args.legend = list(x='topright',bty='n',inset=c(-0.25, 0)))

dist = cars[,2]
dist
hist(dist, main='Histogram for 제동거리', xlab='제동거리', ylab='빈도수', border='blue', col='green', las=2)

result = hist()


