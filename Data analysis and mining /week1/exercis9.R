#Exercise 9
#how to compute the sums of squares from S₁ to S₂₅ using sapply instead of a for-loop:

# Initialize the sequence of n values from 1 to 25
n_values <- 1:25
# Use sapply to compute each Sₙ
s_n <- sapply(n_values, function(n) {
# Calculate sum of squares using the mathematical formula
  n * (n + 1) * (2 * n + 1) / 6
})
# Display the results
print(s_n)
#Explaination
#Instead of explicitly iterating with a for-loop, we use sapply to apply the calculation to each element of n_values
#sapply: Applies the anonymous function to each element of n_values
#The output will be identical to the for-loop version 