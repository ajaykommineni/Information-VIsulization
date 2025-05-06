#1.
# Set the sample size
N <- 25  # Number of voters in the sample

# Set the assumed proportion of Democrats in the population
p <- 0.6  # You can change this value to any probability between 0 and 1

# Calculate the expected value of the number of Democrats in the sample
# Since this follows a Binomial distribution, E[S] = N * p
expected_value <- N * p
cat("Expected number of Democrats (E[S]):", expected_value, "\n")

# Simulate one random sample using the binomial distribution
# rbinom(n, size, prob) generates 'n' samples from Binomial(size, prob)
set.seed(123)  # Set seed for reproducibility of results
sample <- rbinom(1, size = N, prob = p)  # One random draw from Binomial(25, 0.6)

# Print the number of Democrats found in this simulated sample
cat("Simulated number of Democrats in one sample:", sample, "\n")
