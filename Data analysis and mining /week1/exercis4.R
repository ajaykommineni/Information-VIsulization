#Exercise 4
# FUNCTION: sum_n
# Calculates the sum of all integers from 1 to n (inclusive)
# code gives output of  sum of integers from 1 to n

sum_n <- function(n) {
# To  check if n is numeric (not character, logical, etc.)
# Verify n is positive (>0)
# Ensure n is an integer (no decimal places)
  if (!is.numeric(n) || n <= 0 || n != as.integer(n)) {
    stop("Input must be a positive integer")  
    # Error message for invalid input
  }
# The sum of the first n integers = n*(n + 1)/2
  sum_result <- n * (n + 1) / 2
  # RETURN RESULT
  return(sum_result)
}

#Calculate sum from 1 to 5000
result <- sum_n(5000)  
#Function call with n=5000

# FORMATTED OUTPUT
# Using format() with big.mark="," to make large numbers readable
# cat() for clean output without [1] prefix that print() would add
cat("The sum of integers from 1 to 5,000 is:", format(result, big.mark = ","), "\n")