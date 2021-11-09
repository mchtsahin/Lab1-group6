library (ggplot2)

#Please type your headers in here (The person who wrote the code below)..........
options(digits = 22)

n = 0
k = 0

prod(1:n) / (prod(1:k) * prod(1:(n-k)))
prod((k+1):n) / prod(1:(n-k))
prod(((k+1):n) / (1:(n-k)))

binom_coeff <- data.frame(n = 1:50)

rand_k <- function(x) {
  sample(x, 1)
}

A <- function(x) {
  prod(1:x[1]) / (prod(1:x[2]) * prod(1:(x[1]-x[2])))
}

B <- function(x) {
  prod((x[2]+1):x[1]) / prod(1:(x[1]-x[2]))
}

C <- function(x) {
  prod(((x[2]+1):x[1]) / (1:(x[1]-x[2])))
}

fact <- function(x) {
  factorial(x[1]) / (factorial(x[2]) * factorial(x[1] - x[2]))
}

binom_coeff$k <- apply(binom_coeff, 1, rand_k)
binom_coeff$A <- apply(binom_coeff, 1, A)
binom_coeff$B <- apply(binom_coeff, 1, B)
binom_coeff$C <- apply(binom_coeff, 1, C)

binom_coeff$AeqB <- binom_coeff$A == binom_coeff$B
binom_coeff$AeqC <- binom_coeff$A == binom_coeff$C
binom_coeff$BeqC <- binom_coeff$B == binom_coeff$C

binom_coeff$fact <- apply(binom_coeff, 1, fact)

binom_coeff$Aeqfact <- binom_coeff$A == binom_coeff$fact
binom_coeff$Beqfact <- binom_coeff$B == binom_coeff$fact
binom_coeff$Ceqfact <- binom_coeff$C == binom_coeff$fact


install.packages("plotly")
library(plotly)

plot_ly(x = binom_coeff$n, y = binom_coeff$k, z = binom_coeff$A, type = "scatter3d", mode = "markers")

sample_n <- seq(0, 1000, by = 5)
sample_k <- seq(0, 1000, by = 5)

mat_A <- matrix(NA, nrow = length(sample_n), ncol = length(sample_k))
for (i in 1:length(sample_n)) {
  for (j in 1:length(sample_k)) {
    if (sample_k[j] <= sample_n[i]) {
      mat_A[i,j] = prod(1:sample_n[i]) / (prod(1:sample_k[j]) * prod(1:(sample_n[i] - sample_k[j])))
    }
  }
}
colnames(mat_A) <- sample_k
rownames(mat_A) <- sample_n

mat_B <- matrix(NA, nrow = length(sample_n), ncol = length(sample_k))
for (i in 1:length(sample_n)) {
  for (j in 1:length(sample_k)) {
    if (sample_k[j] <= sample_n[i]) {
      mat_B[i,j] = prod((sample_k[j] + 1):sample_n[i]) / (prod(1:(sample_n[i] - sample_k[j])))
    }
  }
}
colnames(mat_B) <- sample_k
rownames(mat_B) <- sample_n

mat_C <- matrix(NA, nrow = length(sample_n), ncol = length(sample_k))
for (i in 1:length(sample_n)) {
  for (j in 1:length(sample_k)) {
    if (sample_k[j] <= sample_n[i]) {
      mat_C[i,j] = prod(((sample_k[j] + 1):sample_n[i]) / (1:(sample_n[i] - sample_k[j])))
    }
  }
}
colnames(mat_C) <- sample_k
rownames(mat_C) <- sample_n

na_count_A <- sum(is.na(mat_A))   
inf_count_A <- sum(is.infinite(mat_A)) 
nan_count_A <- sum(is.nan(mat_A))
n_max_A <- 170
k_max_A <- 165

na_count_B <- sum(is.na(mat_B))   
inf_count_B <- sum(is.infinite(mat_B)) 
nan_count_B <- sum(is.nan(mat_B))
n_max_B <- 1000
k_max_B <- 995

na_count_C <- sum(is.na(mat_C))   
inf_count_C <- sum(is.infinite(mat_C)) 
nan_count_C <- sum(is.nan(mat_C))
n_max_C <- 1000
k_max_C <- 995

vis_df <- data.frame(fields = c("na_count", "inf_count", "NaN_count"),
                     A = c(na_count_A, inf_count_A, nan_count_A),
                     B = c(na_count_B, inf_count_B, nan_count_B),
                     C = c(na_count_C, inf_count_C, nan_count_C))

vis_df_1 <- tidyr::gather(vis_df, key = "fields", value =  "formula", 2:4)


ggplot(vis_df, aes(x = fields)) + geom_bar()

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
