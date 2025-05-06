
#Exercise 2

# We want to determine which expression is ALWAYS FALSE when
# at least one element in logical vector x is TRUE

# Let's create test cases to evaluate each expression
x <- c(TRUE, FALSE, TRUE) 
# Our test vector with at least one TRUE

# 1. all(x)
# Checks if ALL elements are TRUE
# Returns TRUE only if every element is TRUE
# In our case: FALSE (because not all are TRUE)
all(x)

# 2. any(x)
# Checks if ANY element is TRUE
# Returns TRUE if at least one element is TRUE
# In our case: TRUE (we have TRUE values)
any(x)

# 3. any(!x)
# Checks if ANY element is FALSE (since ! negates)
# Returns TRUE if at least one element is FALSE
# In our case: TRUE (we have a FALSE value)
any(!x)

# 4. all(!x)
# Checks if ALL elements are FALSE (after negation)
# Returns TRUE only if every original element was FALSE
# In our case: FALSE (because we have TRUE values)
all(!x)

# Conclusion:
# all(!x) is the only expression that is:
# - FALSE when any element is TRUE
# - Only TRUE when all elements are FALSE

# Therefore, the correct answer is all(!x)