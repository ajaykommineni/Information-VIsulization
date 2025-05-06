#Exercise 7
#Compute the sum of squares from 1² to n²

compute_s_n <- function(n) {
  #Compute the sum of squares from 1² to n²
  #n Positive integer indicating upper bound of summation
  #The sum 1² + 2² + ... + n²
  # Input validation
  if (!is.numeric(n) || n <= 0 || n != as.integer(n)) {
    stop("n must be a positive integer")
  }
  # Calculate sum using the mathematical formula:
  # Sₙ = n(n+1)(2n+1)/6
  sum <- n * (n + 1) * (2 * n + 1) / 6
  return(sum)
}
# Compute the sum when n = 10
result <- compute_s_n(10)
print(paste("The sum of squares from 1² to 10² is:", result))

#Explanation:
#Mathematical Formula:Sₙ = n(n+1)(2n+1)/6
#Input validation ensures n is a positive integer
#Returns the computed sum
#for n=10: 1² + 2² + ... + 10² = 1 + 4 + 9 + 16 + 25 + 36 + 49 + 64 + 81 + 100 = 38
#Output:When you run this code, it will print:
#"The sum of squares from 1² to 10² is: 385"