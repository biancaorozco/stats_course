# 1.0 Matrices ----
# fixed number of rows and cols
# contain only one basic data type

# 1.1 Matrix Function ----
mtrx <- matrix(1:12, nrow = 3)
mtrx

mtrx <- matrix(1:12, ncol = 4) # Overwriting
mtrx

mtrx <- matrix(1:12, ncol = 4, byrow = TRUE) # Overwriting
mtrx

# 2.0 Binding Columns ----

usa <- c(1.3, 1.5, 1.2, 1.4, 1.5)
usa
de <- c(0.2, 0.4, 0.7, 0.8, 0.8)
de

ngo <- cbind(usa, de)
ngo # Cols are automantically named by vector names

rownames(ngo) <- c("2013", "2014", "2015", "2016", "2017")
ngo # renaming rows

# 3.0 Transpose ----
ngo <- t(ngo) # Transpose function
ngo

# 4.0 Binding Rows ----
ind <- c(2, 2.2, 2.4, 2.5, 2.6)
ngo <- rbind(ngo, ind) 
ngo

# 5.0 Single Line of Code ----
gdp <- matrix(c(47.9, 41.2, 41.9, 54.6, 56.2, 57.5, 1.6, 1.6, 1.7), 
              nrow = 3, byrow = TRUE,
              dimnames = list(c("de", "usa", "ind"),
                              c("2014", "2015", "2016")))
gdp

# 6.0 Exercise 11 ----
player <- c(rep("dark", 5), rep("light", 5)) # rep much more efficient
piece <- c("king", "queen", "pawn", "pawn", "knight", "bishop", "king", "rook", "pawn", "pawn")

chess <- c(player, piece)
chess

# 6.1 Method 1 cbind() ----
matx1 <- cbind("Player" = player, "Piece" = piece) # Naming colums as they are binded
matx1

# 6.2 Method 2 dim() ----
matx2 <- chess
dim(matx2) <- c(10,2)
colnames(matx2) <- c("Player", "Piece")
matx2

# 6.3 Method 3 matrix() ----
matx3 <- matrix(chess, 
                nrow = 10, byrow = F, 
                dimnames = list(c(), # or NULL; leaves rows unnamed
                        c("Player", "Piece")))
matx3

# 7.0 Matrices Recycle ----
recycle <- matrix(1:10, nrow = 4, ncol = 4)
recycle

