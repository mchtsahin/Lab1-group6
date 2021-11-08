options(digits = 22)

n = 24
k = 14

prod(1:n) / (prod(1:k) * prod(1:(n-k)))
prod((k+1):n) / prod(1:(n-k))
prod(((k+1):n) / (1:(n-k)))

a <- 1:n
b <- 1:k
c <- 1:(n-k)

a
b
c

prod(a) /prod(b) / prod(c)

d <- (k+1):n
d
e <- 1:(n-k)
e
prod(d)/prod(e)

f <- (k+1):n
g <- 1:(n-k)
f
g
h <- f*(g^-1)
prod(h)


a <- ((k+1):n) / (1:(n-k))
x <- (k+1):n
y <- 1:(n-k)

x
y
x/y
