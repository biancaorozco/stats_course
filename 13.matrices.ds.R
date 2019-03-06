# 1.0 Matrices with Data Science ----

matrix.mat <- matrix(b.office, nrow = 3, byrow = T, 
                     dimnames = list(c("The Matrix", "Reloaded", "Revolutions"),
                                     c("USA", "Worldwide")))
# 2.0 Row and Column Calculations ----
# 2.1 Column Totals
colSums(matrix.mat) # 'S' must be capitalized

# 2.2 Row Totals
rowSums(matrix.mat) # Not relevant in this case

# 2.3 Column Averages
colMeans(matrix.mat)

# 2.4 Row Averages
rowMeans(matrix.mat) # Not relevant 

# 3.0 Matrix Manipulation ----
total <- colSums(matrix.mat)
average <- colMeans(matrix.mat)

matrix.prelim <- rbind(matrix.mat, total, average)

# 4.0 Exercise 14 ----
# 4.1 Create 2 matrices
mat.a <- matrix(rnorm(25), nrow = 5, ncol = 5, byrow = TRUE)
mat.b <- matrix(runif(25), nrow = 5, ncol = 5, byrow = TRUE)

# 4.2 Analysis and binding for mat.a
col.total.a <- colSums(mat.a)
col.avg.a <- colMeans(mat.a)

bind.mat.a <- rbind(mat.a, col.total.a, col.avg.a)

row.total.a <- rowSums(bind.mat.a)
row.avg.a <- rowMeans(bind.mat.a)

bind.mat.a <- cbind(bind.mat.a, row.total.a, row.avg.a)

max(mat.a)
min(mat.a)
max(mat.a[,3])
min(mat.a[,3])
mean(mat.a)
sd(mat.a)

# 4.3 Analysis and binding for mat.b
col.total.b <- colSums(mat.b)
col.avg.b <- colMeans(mat.b)

bind.mat.b <- rbind(mat.b, col.total.b, col.avg.b)

row.total.b <- rowSums(bind.mat.b)
row.avg.b <- rowMeans(bind.mat.b)

bind.mat.b <- cbind(bind.mat.b, row.total.b, row.avg.b)

max(mat.b)
min(mat.b)
max(mat.b[,3])
min(mat.b[,3])
mean(mat.b)
sd(mat.b)

# the data generated with rnorm() will always have an sd close to 1, because this is how the function is defined to work
# rnorm() generates data with default settings mean = 0, standard deviation = 1 

# runif() generates data within the [0, 1] range









