# Exercise: Track wins and losses in Poker and Roulette

# Create vectors for wins/losses
poker <- c(140, -50, 20, -120, 240)
roulette <- c(-24, -50, 100, -350, 10)

# Create a vector for weekdays
days_vector <- c("Mon", "Tue", "Wed", "Thu", "Fri")

# Assign weekday names to the poker and roulette vectors
names(poker) <- days_vector
names(roulette) <- days_vector

# Print the vectors
print("Poker Results:")
print(poker)

print("Roulette Results:")
print(roulette)

# Previous setup (in case not already defined)
poker <- c(140, -50, 20, -120, 240)
roulette <- c(-24, -50, 100, -350, 10)
days_vector <- c("Mon", "Tue", "Wed", "Thu", "Fri")
names(poker) <- days_vector
names(roulette) <- days_vector

# Are you winning/losing money on poker or on roulette?
sum(poker)     # Total from poker: 230
sum(roulette)  # Total from roulette: -314

# Have you lost money over the week in total?
total <- sum(poker) + sum(roulette)
total           # Total for the week: -84

# How much has been your overall profit/loss per day?
# Example: Monday
poker["Mon"] + roulette["Mon"]

# Example: Tuesday
poker["Tue"] + roulette["Tue"]

# Vector selection examples
poker[2]
poker[c(1, 5)]
poker[2:4]
