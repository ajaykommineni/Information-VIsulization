# Load required libraries
library(tidytext)
library(dplyr)

# Tokenize the text: convert lines to individual words
words <- text_content %>%
  unnest_tokens(word, text)

# View the first few words
head(words)