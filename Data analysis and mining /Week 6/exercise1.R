# Load the tissue_gene_expression dataset
data("tissue_gene_expression")

# View the structure
str(tissue_gene_expression)

# Step 1: Access the data matrix
x <- tissue_gene_expression$x

# Step 2: Center each row by subtracting its mean
# This removes overall expression level differences per sample
x_centered <- sweep(x, 1, rowMeans(x))

# Step 3: Compute the Euclidean distances between samples (rows)
d <- dist(x_centered)

# Optional: check structure or preview
print(d)