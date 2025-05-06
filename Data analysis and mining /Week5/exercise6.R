# Load stop words from tidytext
data("stop_words")

# Remove stop words using anti_join
clean_words <- words %>%
  anti_join(stop_words, by = "word")
