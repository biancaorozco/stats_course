# 1.0 Objects and Functions
# objects + functions = <3
# object x is created from function y
# object <- function()

# Piping
install.packages("dplyr")
library(dplyr)

round(2,38972143)
mean(1:10)

a <- 1:10
round(mean(a)) # This is called nesting
# or
b <- mean(a)
c <- round(b)
# or
c <- a %>% mean %>% round

# 2.0 Exercise 4
lvl <- c(8, 10, 10, 1, 10, 10, 8, 12, 1, 12)
sum(lvl)
mean(lvl)
median(lvl)
length(lvl)
sd(lvl)
round(sd(lvl))
lvl %>% sd %>% round
print(round(sd(lvl)))
lvl %>% sd %>% round %>% print

# 3.0 Arguments in Functions ----
# If you want to know the arguments of a function
args(round)
# Optinoal arguments will have a default value
round(2.4271, digits = 2)
round(2.4271, 2) # "digits" is not necessary

# 4.0 Exercise 5
args(sample)
args(median)

median(lvl, na.rm = FALSE)
median(lvl, na.rm = TRUE) # No difference bc lvl has no NA's

median(atk, na.rm = FALSE)
median(atk, na.rm = TRUE) # atk did have NA's
