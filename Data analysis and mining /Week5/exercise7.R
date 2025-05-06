
library(tidytext)
# Load AFINN lexicon from tidytext
afinn <- get_sentiments("afinn")

# Join sentiment scores to your cleaned word list
sentiment_words <- clean_words %>%
  inner_join(afinn, by = "word")

# View result
head(sentiment_words)