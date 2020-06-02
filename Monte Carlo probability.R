# a - yellow die
# b - green die
# c - purple die
# d - red die

n <- 10000
a <- c(0,1,1,2,0,0,1,0)
b <- c(0,1,1,2,2,0,1,1,1,0,0,1)
c <- c(0,1,2,0,0,0,0,1)
d <- c(0,1,1,2,2,0,0,1,1,0,0,1)

genesis <- function(n,a,b,c,d)
{
success <- 0 

  for (i in 1:n)
  {
    if (sample(a,1)+sample(b,1) > sample(c,1)+sample(d,1)) {success = success + 1}
    i = i + 1
  }

return (success / n)
}

genesis(n,a,b,c,d)
