# 1.0 Lists ----
# Properties: 
# 1. recursive vectors
# 2. group R objects into a set
# 3. can store other lists
# 4. one-dimensional
# 5. can store elements of different basic types
# 6. no inherent structure

# 1.1 Create list with names 
my.book <- list(Name = "1984", Author = "George Orwell", Published = 1949,
                Contents = list(PartOne = c(1:8), 
                                PartTwo = c(1:10),
                                PartThree = c(1:6), 
                                Appendix = "Newspeak"))
str(my.book)

# 1.2 Create list without names 
new.book <- list("1984", "George Orwell", 1949,
                 list(c(1:8), c(1:10), c(1:6), "Newspeak"))

# assign names like a vector
# note: this doesn't reach the subsets
names(new.book) <- c("Name", "Author", "Published", "Contents")
str(new.book)

# Index the first 2 elements from list
my.book[1:2]

# Index the 4th element in the list (Contents) with the list in it
my.book[4]

# Index the Contents list
my.book[[4]]

















