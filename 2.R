
q = quantile(cfseal$weight)
q1 = q[2]
q3 = q[4]


group = ifelse(cfseal$weight > q3, 'hight',
               ifelse(cfseal$weight <= q3 & cfseal$weight >= q1, 'middle',
                      ifelse(cfseal$weight < q1, 'low', 'notthing')))


boxplot(stomach~group, data=cfseal)
