# 1.0 Categorical Variables ----
# Race, Gender, Education
# Each category has different levels
# Ordinal levels (variables) are inherently ordered
# Nominal levels (variables) have no natural order

# 2.0 Factoring ----
marital.status <- c("Married", "Married", "Single", "Married", "Divorced", 
                    "Widowed", "Divorced")
str(marital.status) # structure of object: character vector w/ 7 elements

marital.factor <- factor(marital.status) # No longer characters " "
# Identifies Factor Levels as: Divorced, Married, Single , and Widowed
# If level order is not specified, factors are put in alphabetical order

typeof(marital.factor)
str(marital.factor)

# 3.0 Factor Levels ----
new.factor <- factor(marital.factor, 
                     levels = c("Single", "Married", "Divorced", "Widowed"))
str(new.factor)

#3.1 Renaming Factor Levels ----
levels(new.factor) <- c("s", "m", "d", "w") # works like the names()
str(new.factor)

# rename with argument labels = 
new.factor <- factor(marital.status,
                     levels = c("Single", "Married", "Divorced", "Widowed"),
                     labels = c("Sin", "Mar", "Div", "Wid"))
str(new.factor)

# 4.0 Ordinal Variables ----
# This gives a relative raking of marital status levels
ordered.factor <- factor(marital.status, ordered = TRUE, 
                         levels = c("Single", "Married", "Divorced", "Widowed"))

# 5.0 Exercise 15 ----
# To use function capitalize()
install.packages("Hmisc")
library(Hmisc)

# # Information from chess exercise 11
# player <- c(rep("dark", 5), rep("light", 5)) # rep much more efficient
# piece <- c("king", "queen", "pawn", "pawn", "knight", "bishop", "king", "rook", "pawn", "pawn")
# 
# # Bind vectors
# chess <- rbind(player, piece)
# 
# # Create Chess Matrix
# chess.mat <- matrix(chess, 
#                     nrow = 10, byrow = F, 
#                     dimnames = list(c(), # or NULL; leaves rows unnamed
#                                     c("Player", "Piece")))
# chess.mat
# 
# # Transpose to add another row using rbind()
# chess.matrix <- t(chess.mat) # transpose
# chess.matrix
# 
# # New row
# turn <- c(3,5,2,2,7,4,6,5,2,1)
# 
# # Bind new row
# chess.matrix <- rbind(chess.matrix, "Turn" = turn) # Add row
# chess.matrix <- t(chess.matrix) # transpose back to original orientation
# chess.matrix

# 5.1 Save Piece column of matrix as vector
# capitalize() only caps the first word of each string
caps.piece <- capitalize(chess.matrix[,"Piece"])

# character vector to factor
caps.piece <- factor(caps.piece, 
       levels = c("King", "Queen", "Rook", "Bishop", "Knight", "Pawn"))

# rename levels with initials
levels(caps.piece) <- c("K", "Q", "R", "B", "Kn", "P")

# order the levels
piece.ordered <- factor(caps.piece, ordered = TRUE, 
                        levels = c("K", "Q", "R", "B", "Kn", "P"),
                        labels = c("King", "Queen", "Rook", "Bishop", "Knight", "Pawn"))

