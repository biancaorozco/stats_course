# 1.0 Vector Basics ----
# 1.1 Vector Arithmetic ----
vec <- c(1,2,3)
vic <- c(11,12,13)

vec + vic
vec - vic

vec*vic
vec/vic

# 1.2 Other Math Operations
mean(vic)
median(vic)
sd(vic)
sum(vec)
prod(vec)

min(vec)
max(vic)

# 1.3 Vector Recycling
vector1 <- c(1,2,3,4,5,6,7,8,9,10)
vector2 <- c(1,2,3,4,5)

# What will happen if you add 2 vectors of diff lengths?

vector1+vector2
# vector1 1 2 3 4 5 6 7 8 9 10
#         + + + + + + + + + + 
# vector2 1 2 3 4 5 1 2 3 4 5 
#         = 
#         2 4 6 8 10 7 9 11 13 15

# R will recycle vector2 until they lengths match up

# 2.0 Exercise 7
people <- c("Dr. Peter Venkman", "Dr. Raymond Stantz", "Dr. Eagon Spengler", "Dana Barrett", "Virgo", "Slimer", "Marshmallow Man")
weight <- c(71, 67, 83, 67)
height <- c(1.75, 1.81, 1.78, 1.82, 1.97, 2.12, 2.75)

BMI <- weight/height^2
BMI

# How did this work if there are only 4 values in weight and 7 in height?
# Vector Recycling

# 3.0 Vector Attributes ----
# Attributes give us simple matrices where names have values
age <- c(23, 26, 24, 26)
attributes(age)
#NULL
names(age)
#NULL
# This tells us age doesn't have any names assigned to age

names(age) <- c("George", "John", "Paul", "Ringo")
age

attributes(age)
names(age) #These are the same

names(age) <- c("George Harrison", "John Lennon", "Paul McCartney", "Ringo Starr")
age
# We can overwrite attributes/names

# Remove Names/Attributes
names(age) <- NULL
age

# 4.0 Exercise 8 Yugioh
cards <- c("Blue-Eyes White Dragon", "Exodius", "The Winged Dragon of Ra", "Raigeki", "Slifer the Sky Dragon", "Obelisk the Tormentor", "Black Luster Soldier", "5-Headed Dragon", "Exodia the Forbidden One", "Dragon Master Knight")
atk <- c(3000, NA, NA, NA, NA, 4000, 3000, 5000, 1000, 5000)
yugioh <- c(cards, atk)

# Assign a name to each element from the atk vector
# that corresponds to a character from the cards vector
names(atk) <- cards
attributes(atk)
atk

# Remove Names
names(atk) <- NULL
atk

