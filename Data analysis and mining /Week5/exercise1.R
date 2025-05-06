# Load the packages needed to carry out text mining and create visual summaries
library(gutenbergr)   # Lets us download literary works from a public archive
library(dplyr)        # Supports data wrangling such as filtering and arranging
library(tidytext)     # Designed for breaking text into analyzable units
library(stringr)      # Handles tasks involving matching and modifying text
library(ggplot2)      # Allows us to visualize patterns and data insights effectively

# Search for "Pride and Prejudice" in the title column
pride_info <- gutenberg_metadata %>%
  filter(str_detect(title, "Pride and Prejudice"))

# View results
pride_info