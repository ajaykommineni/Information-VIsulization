#Using the training section of the penguins dataset, a decision tree model was constructed and adjusted in this step.  
#To guarantee a reliable assessment of model performance, I started by establishing the resampling approach using trainControl() with 10-fold cross-validation repeated three times.  
#Then, using expand.grid(), I made a hyperparameter grid to test several values of the complexity parameter cp, which ranged from 0.02 to 0.1. 
#I fit the model using the "rpart" approach for decision trees with train(), defining the cross-validation controls and tuning grid.  
#To enable the tree to take splits into account even with little data subsets, I additionally set minsplit = 2 in rpart.control().  
#In order to maximize the model's complexity and make sure the tree didn't overfit or underfit the data, this phase was crucial.

# Hyperparameter Tuning Setup
tune_control <- trainControl(
  method = "repeatedcv",  # 10-fold CV repeated 3 times
  repeats = 3,           # Improves reliability of estimates
  number = 10,           # Number of folds
  savePredictions = TRUE # Stores predictions for analysis
)

# Complexity Parameter Grid
grid_setup <- expand.grid(
  cp = seq(0.02, 0.1, by = 0.02)  # Test 5 cp values (0.02-0.1)
)

# Train Model with Tuning
final_tree <- train(
  species ~ .,
  data = penguin_train,
  method = "rpart",
  trControl = tune_control,
  tuneGrid = grid_setup,
  control = rpart.control(
    minsplit = 2,        # Minimum 2 obs to attempt split
    minbucket = 1,       # Minimum 1 obs in terminal nodes
    xval = 0             # Disable internal x-validation (using caret's)
  )
)

# Model Evaluation
print(final_tree)        
# Displays optimal cp and metrics
