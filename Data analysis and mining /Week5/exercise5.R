# Add a word number column to the tidy word table
words <- words %>%
  mutate(word_number = row_number())

# View the first few rows
head(words)
