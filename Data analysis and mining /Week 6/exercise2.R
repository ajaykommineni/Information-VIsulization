# Load required packages
library(dslabs)     # for tissue_gene_expression
library(dplyr)      # for data manipulation
library(ggplot2)    # for plotting 

# Step 1: Perform hierarchical clustering using the distance matrix
hc <- hclust(d)

# Step 2: Convert tissue types to character vector (for labeling)
labels <- as.character(tissue_gene_expression$y)

# Step 3: Plot dendrogram with tissue type labels
# Basic base R plot
plot(hc, labels = labels, main = "Hierarchical Clustering of Tissues",
     xlab = "", sub = "", cex = 0.6)  # cex adjusts label size
