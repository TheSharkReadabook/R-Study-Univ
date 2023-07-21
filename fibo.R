fibo = function(x){
  if(x <= 1)
    return(x)
  else
    return(x-1 + x-2)
}

for(i in 0:20)
  print(fibo(i))

  