
#Exercise 5
# Altman Plot Function
#Creates a simple plot to compare two measurement methods by showing their differences versus sums

make_altman_plot <- function(x, y) {
# Compute difference between measurements (x - y)
  differences <- x - y
# Compute sum of measurements (x + y)
  sums <- x + y
  plot(sums, differences, 
# Plot differences against sums
       main = "Basic Altman Plot",  # Title
       xlab = "Sum of Measurements",  # X-axis label
       ylab = "Difference (x - y)",   # Y-axis label
       # Point styling:
       pch = 24,   
# Triangle pointing up (helps spot direction)
       col = "blue" 
# Color for visibility
  )
}

# Sample data - measurements from two methods
method_A <- c(10, 15, 20, 25, 30)  # First measurement technique
method_B <- c(9, 16, 19, 26, 29)    # Second measurement technique
# Generate the plot
make_altman_plot(method_A, method_B)


#Visualizes plot between two measurement methods .Each point represents a pair of measurements
#X-axis (Sum): Total of both measurements → shows measurement magnitude
#Y-axis (Difference): How much the measurements differ → shows agreement

