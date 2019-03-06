# 1.0 Character Vectors ----
char <- c("R", "for", "life")
typeof(char)

char2 <- c("The answer to life", "the universe", "and everything", "is", "42")
typeof(char2) # by putting quotes around 42, it is character string

# 2.0 Logical Vectors ----
# Note: R is case-sensitive
spock <- c(FALSE, TRUE, F, F, T, FALSE)
typeof(spock)

# 3.0 Complex and Raw Vectors ----
# These are very unlikely to be used in data analysis
# Will not be covered in this course

# For more info
?is.complex()
?is.raw()

# 4.0 Exercise 2 ----
cards <- c("Blue-Eyes White Dragon", "Exodius", "The Winged Dragon of Ra", "Raigeki", "Slifer the Sky Dragon", "Obelisk the Tormentor", "Black Luster Soldier", "5-Headed Dragon", "Exodia the Forbidden One", "Dragon Master Knight")
typeof(cards)

atk <- c(3000, NA, NA, NA, NA, 4000, 3000, 5000, 1000, 5000)
typeof(atk)
#Note: all the double values have been convered to characters

yugioh <- c(cards, atk)
typeof(yugioh)

# 5.0 Coercion Rules ----
# All vector elements must be of the same type

# Rules:
# 1. If a vector has even ONE string element, all other elements are converted to strings
# 2. If a vector has only logical and numerical elements, all logicals will be converted to numbers (0 and 1)

# 6.0 Exercise 3 ----
monster <- c(T, T, T, F, T, T, T, T, T, T)
yugioh <- c(yugioh, monster)
typeof(yugioh)
yugioh
# every value has been converted into a character string

coerce.check <- c(atk[!is.na(atk)], monster) # removed NAs from atk
typeof(coerce.check)
coerce.check
# Vector was converted into all doubles
# Boolean statements turned into 0s and 1s