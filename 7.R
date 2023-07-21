
getwd()
setwd('C:/Users/young/Documents/R-Script')
getwd()

a = read.csv('seoul_temp_2017.csv', header = F)
head(a)
str(a)
class(a)

my.iris = subset(iris,Species=='setosa')
write.csv(my.iris, 'my_iris2.csv', row.names = T)

install.packages('xlsx')
library(xlsx)

write.xlsx(my.iris, 'my_iris.xlsx', row.name = F)


df$gr3=ifelse(df$highschool<28,'L',
              ifelse(df$highschool<=40,'M','L'))

table(df$gr3)
aggregate(df[,c('housing','crime','poverty')], by=list(df$gr3), mean)

