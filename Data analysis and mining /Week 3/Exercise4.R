#The following R code is intended to display a refined decision tree model saved as final_tree$finalModel. 
#In order to help visualize the decision tree and help comprehend how the model predicts penguin species depending on specific features, it makes use of the rpart.plot function. 
#The rpart package, which is frequently used to create and visualize decision trees, contains this function.

# Visualize the tuned decision tree model
rpart.plot(final_tree$finalModel,
           main = "Optimized Penguin Species Classifier",
           type = 4,                 # Detailed node display
           extra = 104,              # Show class proportions & sample size
           box.palette = "GnBu",     # Color-blind friendly palette
           fallen.leaves = TRUE,     # Align terminal nodes
           shadow.col = "gray60",    # Add depth perception
           nn = TRUE)                # Display node numbers
#Here, a visual representation of the decision tree is produced using the rpart.plot function. 
#With the headline giving background information on the model's improvement, this graphic aids in comprehending how various predictors affect the classification of species.
