# Define the values of N to loop through
N_values <- c(25, 100, 1000)

# Create a sequence of p values from 0 to 1
p <- seq(0, 1, length = 100)

# Set up the plot canvas
plot(p, sqrt(p * (1 - p) / N_values[1]), type = "n",  # Empty plot setup
     ylim = c(0, 0.12),                               # Adjust y-axis to fit all curves
     xlab = "p (Proportion of Democrats)",
     ylab = "Standard Error of X̄",
     main = "Standard Error vs p for Different Sample Sizes")

# Define colors for each curve
colors <- c("blue", "green", "red")

# Loop through each N value and plot the SE curve
for (i in 1:length(N_values)) {
  N <- N_values[i]
  se <- sqrt(p * (1 - p) / N)
  lines(p, se, col = colors[i], lwd = 2)  # Add the line to the plot
}

# Add a legend to differentiate sample sizes
legend("topright", legend = paste("N =", N_values),
       col = colors, lwd = 2)