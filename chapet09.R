month = 1:12
late = c(5,8,7,9,4,6,12,13,8,6,6,4)
late2 = c(4,6,5,8,7,8,10,11,6,5,7,3)
plot(month,
     late,
     main='지각생 통계',
     type='l',
     lty=1,
     lwd=1,
     xlab='Month',
     ylab='Late cnt'
)

lines(month, late2, type='b',col='blue')



1번 병아리와 21번 병아리의 체중 변화를 선그래프로 작서


bbq = subset(ChickWeight, Chick == 1)
bhc = subset(ChickWeight, Chick == 2)

bbq

plot(bbq$weight, bbq$Time, type='l' )

lines(bhc$weight, bhc$Time, type='l',col='blue')




plot(ChickWeight[1])