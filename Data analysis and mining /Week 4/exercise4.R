# Sample size
N <- 25

# Proportion of Democrats in the population
p <- 0.6  # Change as needed

# Standard error of sample proportion X̄ = sqrt(p * (1 - p) / N)
se_X_bar <- sqrt(p * (1 - p) / N)

# Print the result
cat("Standard error of sample proportion (SE[X̄]):", se_X_bar, "\n")
