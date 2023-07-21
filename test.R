espresso = c(4,5,3,6,5,4,7)
americano = c(63,68,64,68,72,89,94)
cafelatte = c(61,70,59,71,71,92,88)

sale.espresso = espresso*2.0
sale.americano = americano*2.5
sale.cafelatte = cafelatte*3.0

sale.day = sale.espresso + sale.americano + sale.cafelatte

names(sale.day) = c('MON','TUE','WED','THR','FRI','SAT','SUN')

sum(sale.day)

sale.mean = mean(sale.day)


names(sale.day[sale.mean<=sale.day])







