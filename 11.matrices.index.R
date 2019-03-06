# 1.0 Matrices ----
# natural extension to vectors
# subsetting is similar to indexing & slicing

# 2.0 Matrix Indexing ----
# Harry Potter box office grosses in US and Worldwide

gross <- c(381, 1340, 318, 975, 396, 960, 292,
           940, 302, 934, 290, 897, 262, 879, 249, 797)
hp.mat <- matrix(gross, nrow = 8, byrow = T)
hp.mat 

# Row Index = [n,]
# Column Index = [,n]

# Call value 897
hp.mat[6,2]

# Call 6th row
hp.mat[6] # Wrong! This gives the 6th value in order L -> R
hp.mat[6,] # Correct

# Call 2nd column
hp.mat[,2] # Returns as a vector

# 3.0 Matrix Slicing ----
# Call multiple rows
hp.snip <- hp.mat[c(1,3,7), ] # Don't forget the comma to separate row/col
hp.snip

# Assigning Names
colnames(hp.mat) <- c("USA", "Worldwide")
rownames(hp.mat) <- c("Hallows Part 2", "Scorcerer's Stone", "Hallows Part 1", 
                      "Order", "Prince", "Goblet", "Chamber", "Prisoner")
hp.mat

# Call row with a name
hp.mat["Goblet",] # Don't forget the comma!

# Call column by a name
hp.mat[,"USA"]

# 4.0 Exercise 12 ----
# Information from chess exercise 11
player <- c(rep("dark", 5), rep("light", 5)) # rep much more efficient
piece <- c("king", "queen", "pawn", "pawn", "knight", "bishop", "king", "rook", "pawn", "pawn")

chess <- c(player, piece)
chess.mat <- matrix(chess, 
                nrow = 10, byrow = F, 
                dimnames = list(c(), # or NULL; leaves rows unnamed
                                c("Player", "Piece")))
chess.mat

# Add another row using rbind()
chess.matrix <- t(chess.mat) # transpose
chess.matrix

turn <- c(3,5,2,2,7,4,6,5,2,1)
chess.matrix <- rbind(chess.matrix, "Turn" = turn) # Add row
chess.matrix <- t(chess.matrix) # transpose back to original orientation
chess.matrix

# Practice Extracting:
# first piece of light player
chess.matrix[6,"Piece"] # or [6,2]

# Player and Piece cols
chess.matrix[, c("Player", "Piece")] # or [,1:2] or [,-3]

# All info about Dark Player
chess.matrix[1:5,] 

# Pieces col as a matrix
## Inexperienced way
pmatx <- chess.matrix[,"Piece"]
dim(pmatx) <- c(10,1)
colnames(pmatx) <- "Piece"
pmatx

## Experienced and efficient way
chess.matrix[, 2, drop = FALSE]

# Everything but Piece col
chess.matrix[, -2]

# 1st and 3rd values on 2nd row
chess.matrix[2,c("Player", "Turn")] # or [2, c(1, 3)]

# Replace the 3rd value on 7th row with 3
chess.matrix[7,"Turn"] = 3 # or [7,3] <- 3
chess.matrix
