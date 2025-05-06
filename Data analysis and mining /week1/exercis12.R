#Exercise 12
#Verify Sum of Squares Calculation
#Compares computational sum of squares against the known mathematical formula
#Sₙ = n(n+1)(2n+1)/6 to validate correctness.

verify_squares <- function(n) {
  # Theoretical sum using mathematical formula
  theoretical_sum <- n * (n + 1) * (2 * n + 1) / 6
  # Computational sum (1² + 2² + ... + n²)
  computed_sum <- sum((1:n)^2)
  # Compare with tolerance for floating point precision
  isTRUE(all.equal(computed_sum, theoretical_sum))
}
# Implementation of sum_square_values for completeness
sum_square_values <- function(n) {
  sum((1:n)^2)
}
# Test cases
print(verify_squares(10))  # TRUE
print(verify_squares(25))  # TRUE 
print(verify_squares(100)) # TRUE
#Uses all.equal() instead of identical() to handle floating point precisio

# Verify for specific values
verify_squares(5)   # TRUE (1+4+9+16+25 = 55)
verify_squares(100) # TRUE
