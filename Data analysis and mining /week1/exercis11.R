#Exercise 11
# create a plot of Sₙ versus n for n = 1 to 25, using the calculated sums of squares:
# Load required package 
library(purrr)

# Calculate Sₙ for n = 1 to 25 using map_dbl
n_values <- 1:25
s_n <- map_dbl(n_values, ~ .x * (.x + 1) * (2 * .x + 1) / 6)
# Create the plot
plot(n_values, s_n,
     main = "Sum of Squares Sₙ vs n",
     xlab = "n", 
     ylab = "Sₙ = 1² + 2² + ... + n²",
     pch = 19,        
     # Solid circles
     col = "blue",   
     # Point color
     cex = 1.2,       
     # Point size
     xlim = c(0, 25), # X-axis limits
     ylim = c(0, 6000)) # Y-axis limits
# Add connecting lines
lines(n_values, s_n, col = "gray", lty = 2)
# Add grid for better readability
grid()
# Add the mathematical formula to the plot
text(5, 4000, expression(S[n] == frac(n*(n+1)*(2*n+1), 6)), cex = 1.1)

#Explaination
#Key Features of the Plot:Blue solid circles at each (n, Sₙ) coordinate,Sized for good visibility (cex = 1.2)
#Mathematical formula displayed on plot

#The nonlinear growth of the sum of squares and Sₙ increases rapidly with increasing n
#The characteristic cubic growth pattern (since sum of squares is O(n³))