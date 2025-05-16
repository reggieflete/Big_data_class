# Create vectors for each movie
new_hope <- c(460.9, 314.4)
empire_strikes <- c(290.5, 247.9)
return_jedi <- c(309.3, 165.8)

# Combine into a matrix (by row)
star_wars <- matrix(c(new_hope, empire_strikes, return_jedi),
                    nrow = 3, byrow = TRUE)

# Add row and column names
rownames(star_wars) <- c("A New Hope", "Empire Strikes Back", "Return of the Jedi")
colnames(star_wars) <- c("US", "Non-US")

# View matrix
star_wars

# Create second trilogy matrix
star_wars_matrix2 <- matrix(c(474.5, 552.5,
                              310.7, 338.7,
                              380.3, 468.5),nrow = 3, byrow = TRUE)

rownames(star_wars_matrix2) <- c("The Phantom Menace","Attack of the Clones","Revenge of the Sith")
colnames(star_wars_matrix2) <- c("US", "Non-US")
# View second trilogy matrix
star_wars_matrix2

# Combine first and second trilogies row-binding rbind
all_movies <- rbind(star_wars, star_wars_matrix2)

# View the full matrix
all_movies

# Total revenue by region
colSums(all_movies)

# Total revenue by movie
rowSums(all_movies)

# Mean of Non-US revenue (column 2)
mean(all_movies[, 2])  # Output: 347.9667

# Mean of US revenue for the second trilogy (rows 4 to 6)
mean(all_movies[4:6, 1])  # Output: 388.5

# Set up row and column names
movie_titles <- c("The Phantom Menace", "Attack of the Clones", "Revenge of the Sith")
col_titles <- c("US", "Non-US")

# Ticket prices matrix
ticket_prices <- matrix(c(5, 5,
                          6, 6,
                          7, 7),
                        nrow = 3, byrow = TRUE,
                        dimnames = list(movie_titles, col_titles))

# View ticket prices
ticket_prices

# Calculate number of visitors = revenue / ticket price
visitors <- star_wars_matrix2 / ticket_prices

# View visitors matrix
visitors

# Average US visitors for The Phantom Menace
mean(visitors[1, ])  # Output: 67.00397
