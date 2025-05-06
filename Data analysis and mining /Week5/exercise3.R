# Fetch the complete text of Jane Austen's "Pride and Prejudice" using its unique ID (1342) from an alternate Gutenberg mirror server
text_content <- gutenberg_download(1342, mirror = "http://mirror.csclub.uwaterloo.ca/gutenberg/")

# Gutenberg ID 1342 uniquely identifies this classic novel. The specified mirror is used to speed up the download and reduce the load on the main server.

# Preview the beginning of the downloaded text to make sure it loaded correctly and to get a quick look at the format.
head(text_content)  
# This quick check confirms that the data has been retrieved and lets us see what the raw content looks like before processing.
