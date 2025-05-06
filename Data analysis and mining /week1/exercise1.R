

# Exercise 1
# This program checks if all elements in a numeric vector are positive numbers

# Create a numeric vector with 4 elements (1, 2, -3, 4)
# I specifically chose these values to test both cases of the if-else statement
x <- c(1, 2, -3, 4)  
# My vector containing both positive and negative numbers
# MY IF-ELSE LOGIC:
# I implemented this conditional check to verify if ALL numbers are positive
if(all(x > 0)) {  
  # Using all() function to check every element
  print("All Positives")  
} else {
  # Case when at least one number fails the positive check
  print("Not all positives") 
}

# explaination:
# I created this to practice conditional statements and vector operations in R.
#It demonstrates my understanding ofVector creation,Logical conditions,If-else control flow,The all() function

