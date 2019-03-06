# 1.0 Card Game ----
deck <- c("Duke", "Assassin", "Captain", "Ambassador", "Contessa")

args(sample)
hand <- sample(deck, 3, replace = T)

# 2.0 Building the Function ----

# 2.1 Format ----
#   function.name <- function(){
#     body.of.code
#   }

# 2.2 Draw Function ----
draw <- function(){
  # This function will create the deck
  deck <- c("Duke", "Assassin", "Captain", "Ambassador", "Contessa")
  # Then it will draw 3 cards from the deck to make the player's hand
  hand <- sample(deck, 3, replace = T)

  print(hand)
}
draw()


# 3.0 Exercise 6 ----
# Create a Coin Flip function 
# 100 flips
# 30%/70% probability

flip <- function(){
  coin <- c("Heads", "Tails")
  toss <- sample(coin, 100, replace = T, prob = c(0.3, 0.7))
  print(toss)
}
flip()



