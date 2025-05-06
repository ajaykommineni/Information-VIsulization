#Exercise 8
# Initialize empty numeric vector of length 25
s_n <- vector("numeric", 25)
# Compute each Sₙ from n=1 to 25 using a for-loop
for (n in 1:25) {
  # Calculate sum of squares from 1² to n² using the formula
  s_n[n] <- n * (n + 1) * (2 * n + 1) / 6
}
# Display the results
print(s_n)
#Explanation:
#1.Vector Initialization: vector("numeric", 25) creates an empty numeric vector with 25 elements
#2 For-loop Calculation: Loops through each integer n from 1 to 25
#3For each n, computes the sum of squares using the formula
#Stores each result in the corresponding position of s_n
#The final vector s_n contains all 25 sums:s_n[25] = 5525 (1² + 2² + ... + 25²)