room.class = TitanicSurvival$passengerClass
room.class

tbl = table(room.class)
tbl
sum(tbl)

barplot(tbl, main='선실별 탑승객',
        xlab='class',
        ylab='탑승객수',
        col=c('blue','green','yellow'))

tbl/sum(tbl) # 각 열/1309

pie(tbl,main='선실별 탑승객',
    col=c('blue','green','yellow'))

barplot(table(TitanicSurvival$sex))

grad = state.x77[,'HS Grad']
grad

summary(grad)
var(grad)
sd(grad)

hist(grad, main='titke')

boxplot(grad)

idx = which(grad==min(grad))
grad[idx]

which(grad<mean(grad))

boxplot(TitanicSurvival$age)
hist(TitanicSurvival$age)

str(TitanicSurvival)

death = as.vector(window(mdeaths, 1974, c(1974, 12)))
death

plot(death~month, type='b')

range(carprice$Price)
mean(carprice$Price)

hist(carprice$Price)

tbl = table(carprice$Type)
tbl

barplot(tbl)

idx = which(carprice$Price==max(carprice$Price))
carprice[idx, c('Type','Price')]

plot(carprice[,c('Price','gpm100','MPG.city','MPG.highway')])
cor(carprice)


z1 = c(1,2,3,NA,5,NA,8)
z2 = c(5,8,1,NA,3,NA,7)
z1
z1[is.na(z1)] = 0
z1


z3 = as.vector(na.omit(z2))
z3

ozone = airquality$Ozone

sum(is.na(ozone))

ozone.pure=as.vector((na.omit(ozone)))
ozone.pure

x = iris
x[1,2] = NA; x[1,3] = NA
x[2,3] = NA; x[3,4] = NA
head(x)

col_na = function(y){
  return(sum(is.na(y)))
}

na_count = apply(x, 2, FUN=col_na)
na_count


rowSums(is.na(x))
sum(rowSums(is.na(x))>0)
sum(is.na(x))

head(x)
x[!complete.cases(x),]
y = x[complete.cases(x),]
head(y)

c = function(y){
  return(sum(is.na(y)))
}

apply(airquality, 2, FUN=c)

library(carData)
str(UN)

col_na = function(y){
  return(sum(is.na(y)))
}

apply(UN, 2, FUN=col_na)

mean(UN$lifeExpF, na.rm=T)


head(iris)
order(iris$Sepal.Length)
iris[order(iris$Sepal.Length),]
iris[order(iris$Sepal.Length, decreasing = T),]
iris.new = iris[order(iris$Sepal.Length, decreasing = T),]
head(iris.new)
head(iris[order(iris$Species, decreasing=T, iris$Petal.Length),])

      




state.x77[order(state.x77[,'Population']),]


x = 1:100
x
sample(x, size=10, replace=FALSE)



idx = sample(1:nrow(iris), size=50, replace=F)
iris.50 = iris[idx,]
dim(iris.50)
head(iris.50)


combn(1:5,3)
x=c('red','green','blue','black','white')
com = combn(x, 2)
com

for(i in 1:ncol(com)){
  cat(com[,i], "\n")
}

combn(1:5, 3)

combn(levels(iris$Species),2)

aggregate(iris[,-5], by=list(iris$Species), FUN=var)

head(mtcars)
aggregate(mtcars, by=list(cyl=mtcars$cyl,
                          vs=mtcars$vs), FUN=max)

aggregate(iris$Petal.Length, by=list(iris$Species), FUN=max)

Chile[complete.cases(Chile),]

co = function(y){
  return(sum(is.na(y)))
}

apply(Chile, 2, FUN=co)/nrow(Chile)

tmp = airquality


tmp$Ozone[is.na(tmp$Ozone)] = 0
tmp$Solar.R[is.na(tmp$Solar.R)] = 0

sort(airquality$Solar.R)



tmp = airquality[,c("Month","Day","Solar.R")]

tmp[order(tmp$Solar.R),]

head(airquality[order(airquality$Solar.R),], n=10)

idx = sample(nrow(CES11), 200, replace = FALSE)

sam = CES11[idx,]

aggregate(sam$urban, by=list(sam$urban),FUN=table)

sam2 = sample(nrow(CES11), nrow(CES11)*.2, replace=FALSE)
sam2 = CES11[idx,]
aggregate(sam2, by=list(sam2$education), FUN=table)

 

tmp = Leinhardt[complete.cases(Leinhardt),]

aggregate(tmp$infant, by=list(tmp$region), FUN=mean)

aggregate(tmp$infant, by=list(tmp$oil), FUN=mean)

aggregate(tmp$infant, by=list(tmp2, tmp3), FUN=mean)


tmp_high<-tmp[which(tmp$income>mean(tmp$income)),]
tmp_low<-tmp[which(tmp$income<mean(tmp$income)),]
mean(tmp_high$infant)
mean(tmp_low$infant)































