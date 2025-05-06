# Set true proportion
p <- 0.45

# Define a vector of sample sizes to test
N_values <- c(25, 50, 100, 200, 500, 1000)

# Calculate standard error for each N
se_d_values <- 2 * sqrt(p * (1 - p) / N_values)

# Print result
data.frame(Sample_Size = N_values, Standard_Error_d = round(se_d_values, 4))


#The correct choice is:
#Our standard error is larger than the difference, so the chances of 2𝑋ˉ−1. 2X−1 being positive and throwing us off were not that small. 
# We should pick a larger sample size.