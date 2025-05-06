#Exercise 6
#To determine the final value of x:

x <- 3                  
# Assigns value 3 to global variable x
my_func <- function(y){
  #Creates a function
  x <- 5              
  #Creates a LOCAL variable x (doesn't affect global x)
  y+5                   
  # Returns y + 5 (but doesn't change x)
}
x
#The function definition (Lines 2-4) is just stored, not executed yet
#Since we never actually call my_func(), the x <- 5 line never runs Thus, the final value of x is 3.
