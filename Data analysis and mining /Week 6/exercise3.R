# Load libraries
library(dslabs)
library(dplyr)

# Get the centered data again
x <- tissue_gene_expression$x
x_centered <- sweep(x, 1, rowMeans(x))

# Set number of clusters
k <- 7

# Run k-means clustering (set nstart for more stable results)
set.seed(123)  # Set seed for reproducibility
kmeans_result <- kmeans(x_centered, centers = k, nstart = 25)

# Compare clusters to actual tissue types
table(Cluster = kmeans_result$cluster, Tissue = tissue_gene_expression$y)
