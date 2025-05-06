# Load ggplot2
library(ggplot2)

# Plot sentiment value over word number with a smooth trend line
ggplot(sentiment_words, aes(x = word_number, y = value)) +
  geom_point(alpha = 0.3, color = "steelblue") +     # Light dots for each word's sentiment
  geom_smooth(method = "loess", se = FALSE, color = "red") +  # Smooth trend line
  labs(title = "Sentiment over the Course of Pride and Prejudice",
       x = "Word Number (Position in Book)",
       y = "AFINN Sentiment Score") +
  theme_minimal()
