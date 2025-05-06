# Set sample size
N <- 25

# Create a sequence of p values from 0 to 1 (100 points)
p <- seq(0, 1, length = 100)

# Compute standard error for each p using the formula: sqrt(p * (1 - p) / N)
se <- sqrt(p * (1 - p) / N)

# Plot SE vs. p
plot(p, se, type = "l",                      # Line plot
     main = "Standard Error of X̄ vs p",     # Title
     xlab = "p (Proportion of Democrats)",   # x-axis label
     ylab = "Standard Error of X̄",          # y-axis label
     col = "blue", lwd = 2)                  # Line color and thickness
