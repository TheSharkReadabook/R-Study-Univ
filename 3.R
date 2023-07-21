set.seed(1234)
list(sample(1:nrow(CES11), size=nrow(CES11)/5))
aggregate(CES11[,-8], by = list(CES11$education), FUN=table)

lhd = Leinhardt[complete.cases(Leinhardt),]
aggregate(lhd$infant, by=list(lhd$region), FUN=mean)

aggregate(lhd$infant, by=list(lhd$oil), FUN=mean)

aggregate(lhd$infant, by=list(group1, group2), FUN=mean)


group1 = lhd[which(mean(lhd$income) <= lhd$income),]

group2 = lhd[which(mean(lhd$income) >= lhd$income),]

mean(group1$infant)
mean(group2$infant)


up25 = Ericksen[which(Ericksen$minority >= 25),]
down25 = Ericksen[which(Ericksen$minority < 25),]
mean(up25$crime)
mean(up25$poverty)
mean(down25$crime)
mean(down25$poverty)

aggregate(Ericksen[c('crime', 'poverty')], by=list(Ericksen$minority), FUN=mean)

aggregate(Ericksen[c('crime', 'poverty')], by=list(up25$minority), FUN=mean)




eri = Ericksen 

eri[which(eri$highschool < 28),"highschool"] = 'bottom'

eri[which(eri$highschool >= 28) & (eri$highschool <= 40),"highschool"] = 'mid'

eri[which(Ericksen$highschool > 40),"highschool"] = 'top'

aggregate(eri[c('housing', 'crime', 'poverty')], by=list(eri$highschool), FUN=mean)


#11.11

aggregate(Ericksen$minority, by=list(Ericksen$city), FUN=mean)

up = subset(Ericksen[,2:3], Ericksen$minority >= mean(Ericksen$minority)*.25)
down = subset(Ericksen[,2:3], Ericksen$minority < mean(Ericksen$minority)*.25)

aggregate(r, by=list(up,down), FUN=mean)
