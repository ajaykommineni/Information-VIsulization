#It makes use of the `rpart` package for recursive partitioning.
#A technique for creating decision trees that learn basic decision rules derived from the properties of the data to forecast the value of a target variable.  
#This tree is then graphically displayed using the `rpart.plot` function, which improves comprehension of the model's decision-making process.

# Decision Tree Classification
library(rpart)        
# For recursive partitioning (decision trees)
library(rpart.plot)   
# For visualizing decision trees

# Train classification tree model
predictive_tree <- rpart(
  species ~ .,               
  # Predict species using all other variables
  data = penguin_train,      
  # Use our pre-processed training data
  method = "class"           
  # Specify classification (not regression)
)

# Visualize the decision tree
rpart.plot(predictive_tree,
           main = "Penguin Species Classification Tree",  # Plot title
           box.palette = "Blues",       
           shadow.col = "gray",          
           nn = TRUE)                    
# This function plots the decision tree, detailing the node splits and the criteria used, 
#enhancing understanding of the model structure.

