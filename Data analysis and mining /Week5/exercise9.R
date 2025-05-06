# Convert word number to page (300 words per page)
sentiment_words$page <- sentiment_words$word_number %/% 300 + 1

# Calculate average sentiment per page
avg_sentiment <- sentiment_words %>%
  group_by(page) %>%
  summarise(mean_sentiment = mean(value))

# Plot average sentiment per page with smoother
ggplot(avg_sentiment, aes(x = page, y = mean_sentiment)) +
  geom_line(color = "blue") +
  geom_smooth(se = FALSE, color = "red") +
  labs(title = "Sentiment by Page", x = "Page", y = "Average Sentiment")
