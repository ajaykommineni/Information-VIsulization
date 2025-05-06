#Exercise 10
# compute the sums of squares from S₁ to S₂₅ using map_dbl from the purrr package:

# Load the purrr package
library(purrr)
# Initialize the sequence of n values from 1 to 25
n_values <- 1:25
# Use map_dbl to compute each Sₙ
s_n <- map_dbl(n_values, ~ {
# Calculate sum of squares using the mathematical formula
  .x * (.x + 1) * (2 * .x + 1) / 6
})
# Display the results
print(s_n)
#explaination
#map_dbl Specifics: Returns a numeric vector (double) by default
#Uses formula interface with ~ and .x for the input value
#Similar to sapply but with more consistent output type more explicit about expecting numeric output than sapply
#For this simple calculation, performance difference between approaches is negligible map_dbl shines in more complex mapping operations