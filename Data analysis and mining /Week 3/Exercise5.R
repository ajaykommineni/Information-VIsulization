#I used the trained decision tree model (final_tree) in this exercise to conduct a variable significance analysis. 
#I evaluated each predictor's contribution to the penguin species classification using the varImp() tool.Based on the underlying decision-making structure of the model
#namely the frequency and efficacy of each variable's use in data splittingthis function determines relevance ratings.  
#I could see which features—like body mass, flipper length, or beak length—had the biggest impact on the model's predictions by printing importance_analysis, which gave me an ordered list of features.

# Calculate and visualize variable importance
importance_metrics <- varImp(final_tree, scale = TRUE)  # Get scaled importance scores (0-100)

# Display sorted importance scores
print(importance_metrics)  # Shows each variable's relative contribution
# Visualize as a horizontal bar plot
