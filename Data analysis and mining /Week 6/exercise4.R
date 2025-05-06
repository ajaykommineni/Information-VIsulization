# Load required libraries
library(dslabs)
library(RColorBrewer)

# Load the dataset
x <- tissue_gene_expression$x
y <- tissue_gene_expression$y

# Step 1: Select the 50 most variable genes
gene_variances <- apply(x, 2, var)
top_genes <- order(gene_variances, decreasing = TRUE)[1:50]
heatmap_data <- x[, top_genes]

# Step 2: Center each gene (column-wise)
heatmap_ready <- sweep(heatmap_data, 2, colMeans(heatmap_data))

# Step 3: Assign tissue colors for each row (sample)
# Use Set1 palette for clarity
tissue_colors <- as.factor(y)
color_palette <- brewer.pal(length(levels(tissue_colors)), "Set1")
tissue_color_keys <- color_palette[tissue_colors]

# Step 4: Plot the heatmap
heatmap(heatmap_ready,
        RowSideColors = tissue_color_keys,  # Add color to show tissue type
        col = brewer.pal(11, "RdBu"),       # Color scale: low (blue) to high (red)
        main = "Top 50 Genes: Expression Clustering by Tissue",
        margins = c(6, 6))                  # Extra space for labels

