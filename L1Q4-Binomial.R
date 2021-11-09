

#Please type your headers in here (The person who wrote the code below)..........
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

#Answer 1 ********************************************************************

x1 <-  1 / 3 ;
x2 <- 1 / 4
if (x1 - x2==1/12){
  print("Subtraction is correct") }else{print("Subtraction is wrong")
  }

# The output of this calculation is "Subtraction is wrong"
#Decimal to Binary
#   1/3 = 0.0101010101.....
#   1/4 = 0.01

# subtraction 0.01010101010101.. - 0.01 != 1/12

x3 <- 1
x4 <- 1/2
if (x3-x4==1/2){print("Subtraction is correct") }else{print("Subtraction is wrong") }

#Decımals to Binary
# 1 = 0000000000000001
# 1/2 = 0.1

# Subtraction =  0000000000000001 - 0.1 = 0.1

# The output of this calculation is "Subtraction is correct"

#******************************************************************************
