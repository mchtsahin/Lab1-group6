# Comp stat lab 1
#1
derivative_function <- function(x=2 , epsilon = 10**-15){
  derivattive_1 <- ((x+epsilon) - x) / epsilon
  derivattive_1
  
  
}

#2
derivative_function(x=1)
derivative_function(x=1000)
#3 
# We get the following values 1.110223 and 0 
# The correct answer in both of the cases should be 1.  
# The numerator ((x+epsilon) - x) decides the outcome in this case. 
# 1 + epsilon - 1 gives a value close to 1 with an error whilst 
# 100000 + epsilon - 100000 gives 0. epsilon is thus disregarded when being
# summed or subtracted by relatively large values with 18 decimal places difference
# This occurs because the computer want to add the mantisas of both numbers
# and it does it in a way where it will increase the exponent of the smallest
# number until it matches the large value. This is where the approximation happens
# and in the worse cases like when x is 100000, the small value will become 0.
# We know that the  derivative of a of X with regards to X should == 1. 