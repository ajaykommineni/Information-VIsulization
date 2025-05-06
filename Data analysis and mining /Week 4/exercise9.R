# Given values
p <- 0.45
N <- 25

# Compute standard error of d = 2 * SE(X̄)
se_d <- 2 * sqrt(p * (1 - p) / N)

# Print the result
cat("Standard error of d when p = 0.45 and N = 25:", se_d, "\n")
