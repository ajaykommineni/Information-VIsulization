# Sample size
N <- 25

# Proportion of Democrats in the population
p <- 0.6  # You can change this to other values like 0.5, 0.3, etc.

# Calculate the standard error of S
# SE = sqrt(N * p * (1 - p))
standard_error <- sqrt(N * p * (1 - p))

# Print the result
cat("Standard error of S:", standard_error, "\n")
