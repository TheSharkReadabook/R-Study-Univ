myvar = function(x){
  n = length(x)
  m = mean(x)
  result = sum((x-m)^2)/(n-1)
return(result)
}

y = c(1:50)

myvar(y)

var(y)


var_func <- function(x) {
  n <- length(x)
  mean_x <- mean(x)
  sum_sq_dev <- sum((x - mean_x)^2)
  var_x <- sum_sq_dev / (n - 1)
  return(var_x)
}

var_func(y)
