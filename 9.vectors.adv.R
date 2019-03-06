# 1.0 Vector Indexing ----
n.deck <- c(6,7,8,9,10)
deck <- c("Duke", "Assassin", "Captain", "Ambassador", "Contessa")

deck[4]
# "Ambassador"
deck[-4]
# Everything BUT "Ambassador"
deck[c(1,3,5)]
# "Duke"  "Captain"  "Contessa"

names(n.deck) <- deck
n.deck

n.deck["Contessa"]
n.deck[c("Contessa", "Duke", "Ambassador")]

# 2.0 Vector Slicing ----

n.deck[3:5]

lv <- seq(10,100,10)
lv

lv[-(4:7)]
lv[lv > 30]

# 3.0 Exercise 9 ----
atk <- c(3000, NA, NA, NA, NA, 4000, 3000, 5000, 1000, 5000)

atk
atk[6]
atk[-2]
atk[c(1,3,5,7,9)]
atk[-c(4:6)]
atk[atk > 2000]


# 4.0 Vectors by Dimensions and Classes ----
a <- seq(10, 120, by = 10)
a
typeof(a)
class(a)

dim(a) <- c(3,4) # 3 rows, 4 columns filled by col
a # a is now a matrix
typeof(a) # this doesn't change the type
class(a) # dim does change the class


# 5.0 Exercise 10 ----
s <- seq(2, 30, by = 2)
attributes(s)
dim(s) <- c(3,5)
s

dim(s) <- c(1,3,5)