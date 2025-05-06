# Get cleaned metadata: English language, no duplicates
cleaned_books <- gutenberg_works()

# Search for "Pride and Prejudice" in the cleaned dataset
pride_cleaned <- cleaned_books %>%
  filter(str_detect(title, "Pride and Prejudice"))

# View the results
pride_cleaned