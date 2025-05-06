# Set parameters
N <- 25
p <- 0.6

# Compute standard error of d = 2 * SE(X̄)
se_d <- 2 * sqrt(p * (1 - p) / N)

# Print result
cat("Standard error of d:", se_d, "\n")
