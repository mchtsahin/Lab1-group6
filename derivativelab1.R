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
#The reason for this not being the case when doing the 
#calulations in the way we do above is due to the way that
# R handles representations of numbers with a long 
# row of decimals(is this correct???). We know that the 
# derivative of a of X with regards to X should == 1. 



