wt = mtcars$wt
mpg = mtcars$mpg
plot(wt, mpg,
     main = '중량 -연비그래프',
     xlab = '중량',
     ylab = '연비'
)

plot(four~one, milk)

plot(milk)



vars = c('mpg','disp','drat','wt')
target = mtcars[,vars]
head(target)
plot(target, main='Multi plots')


head(codling)
str(codling)

plot(codling[,c('dose','pobs','ct')])

iris.2 = iris[,3:4]

levels(iris$Species)

group = as.numeric(iris$Species)

color = c('red','green','blue')
plot(iris.2, main='tite',pch=c(group),col = color[group])


legend(x='bottomright', legend = levels(iris$Species), col=c('red','green','blue'), pch=c(1:3))

levels(factor(codling$Cultivar))

codgroup = as.numeric(factor(codling$Cultivar))

plot(codling[,c('dose','pobs','ct')], pch=c(codgroup), col = color[codgroup])

plot(tinting$it, tinting$csoa)

group5 = tinting$tint

plot(tinting$it, tinting$csoa, pch=c(group5), col=color[group])

group = as.numeric(tinting$agegp)
color = c('red','blue')
plot(tinting$it, tinting$csoa, pch=c(group), col=color[group])




