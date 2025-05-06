# Load required packages
library(palmerpenguins)  
# Contains penguin morphometric data
library(caret)          
# For createDataPartition() and ML workflows

# Load and inspect data
data(penguins)
str(penguins)           
# Check structure: species, measurements for detailed analysis.

# Data cleaning - to remove incomplete cases
penguins_prepared <- na.omit(penguins) 
# To ensure robustness in the analysis that follows, 
#The dataset is cleaned by deleting rows with missing values using the na.omit function.

# Create reproducible 77/23 train-test split
set.seed(120)  # Fix random number generator for reproducibility
sample_index <- createDataPartition(
  penguins_prepared$species, 
  p = 0.77,            # 77% training, 23% testing
  list = FALSE
)  
# Creating  partitioned datasets
penguin_train <- penguins_prepared[sample_index, ]   
# Assign the designated training indices to extract the training set from the prepared data.
penguin_test  <- penguins_prepared[-sample_index, ]  
# The complement of the training index set is used to form the test set.
# we need to ensure no overlap and providing a clear basis for model validation.
# Verify class distribution
prop.table(table(penguin_train$species))  # Training proportions
prop.table(table(penguin_test$species))   # Should match closely