# Set parameters
N <- 25        # Sample size
p <- 0.6       # Proportion of Democrats
B <- 10000     # Number of simulations

# Simulate B samples of size N and compute sample proportions (X̄)
X_bar <- rbinom(B, N, p) / N

# Compute d = 2 * X̄ - 1
d <- 2 * X_bar - 1

# Print simulated and theoretical expected value
cat("Simulated mean of d:", mean(d), "\n")
cat("Theoretical value (2p - 1):", 2 * p - 1, "\n")