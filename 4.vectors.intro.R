# 1.0 Vectors ----

# There are 6 types of vectors:
# integer
# double
# character
# logical
# complex (not widely applicable)
# raw (not widely applicable)
bob <- 7
a <- 1:10

is.vector(a)
is.vector(bob)

# Note: this saves as 'num' or double as default
int <- c(5, 6, 7, 8)

# The 'L' following each number stores this vector as integers
int <- c(5L, 6L, 7L, 8L)

# Double Check
typeof(int)

# List Objects in Environment
ls()
