# 1.0 Matrix Arithmetic ----
b.office <- c(171.5, 292, 281.6, 460.6, 139.3, 288)
matrix.mat <- matrix(b.office, nrow = 3, byrow = T, 
                     dimnames = list(c("The Matrix", "Reloaded", "Revolutions"),
                                     c("USA", "Worldwide")))

# 1.1 Constant Division ----
# Convert from millions into billions                                                                          c("US", "Worldwide")))
matrix.mat
matrix.scaled <- matrix.mat/1000
matrix.scaled

# 1.2 Constant Subtraction ----
# Calculate average margin for each movie
# Avg Budget = $121 million
# Avg margin = Totals - Avg Budget
avg.margin <- matrix.mat - 121
avg.margin

# 1.3 Matrix Subtraction ----
# Calculate average margin using actual budget for each movie
# Create matrix and subtract both
budget <- matrix(c(63, 150, 150), nrow = 3, ncol = 2) # Recycled matrix
budget
margin <- matrix.mat - budget
margin

# 1.4 Matrix Multiplication ----
# Multiplied element by element
v <- matrix(1:6, nrow = 3)
v
matrix.multiplied <- matrix.mat*v
matrix.multiplied

# Linear Algebra Multiplication 
# Inner multiplication %*%
# Outer multiplication %o%

# 2,0 Exercise 13 ----
?runif 
# Generates random numbers in a uniform distribution
# default max and min = 0 & 1

rmatrix <- matrix(runif(12), nrow = 3, ncol = 4, 
       byrow = TRUE, 
       dimnames = list(c("x", "y", "z"),
                       c("uno", "dos", "tres", "cuatro")))
rmatrix.10 <- rmatrix*10
clipped.v <- rmatrix.10[,1, drop = FALSE]

rmatrix.10 - clipped.v

?rnorm
# Generates random numbers in a normal distribution
# default mean and sd = 0 & 1

norm.matrix <- matrix(rnorm(12), nrow = 3, ncol = 4)
norm.matrix * rmatrix.10

rmatrix.10 %*% t(norm.matrix)









