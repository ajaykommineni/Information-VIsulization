 
#Based on the test set, I created species predictions using the predict() function. I then used confusionMatrix() to compare these predictions to the actual species labels. 
#Accuracy, sensitivity, specificity, and other classification findings are all thoroughly evaluated by this function.
#I used eval_matrix$overall['Accuracy'] to extract and print only the model's overall accuracy. 
#The model's ability to generalize to new data is shown by this statistic. 
#Based on the chosen features and tuning parameters from previous exercises, a high accuracy score shows that the model is successful in classifying penguin species.

# Use the tuned model to predict species on the test set and evaluate its accuracy.


# Generate test set predictions
final_pred <- predict(final_tree, 
                      newdata = penguin_test,
                      type = "raw")  # Returns class predictions

# Compute comprehensive evaluation metrics
eval_metrics <- confusionMatrix(
  data = final_pred,
  reference = penguin_test$species,  # True labels
  mode = "everything"               # Compute all available metrics
)

# Print detailed class-level metrics
print(eval_metrics$byClass[, c("Recall", "Precision", "F1")])

