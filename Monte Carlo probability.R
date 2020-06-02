# a - yellow
# b - green
# c - purple
# d - red

genesis <- function(n,a,b,c,d)
{
success <- 0 
bonus <- sample(c('tak','nie'),1)

for (i in 1:n)
{
  if (bonus == 'tak')
  {
    if (sample(a,1)+sample(b,1) > sample(d,1)) {success = success + 1}
  }
  else
  {
    if (sample(a,1)+sample(b,1) > sample(c,1)+sample(d,1)) {success = success + 1}
  }
  i = i + 1
}
return (success / n)
return (bonus)
}

n <- 10000
a <- c(0,1,1,2,0,0,1,0)
b <- c(0,1,1,2,2,0,1,1,1,0,0,1)
c <- c(0,1,2,0,0,0,0,1)
d <- c(0,1,1,2,2,0,0,1,1,0,0,1)

genesis(n,a,b,c,d)



