# Demonstrates interactive program to view data by feed type

# Read and clean data
chicks <- read.csv("chicks.csv")
chicks <- subset(chicks, !is.na(weight))

# Determine feed options
feed_options <- unique(chicks$feed)

# Format options
formatted_options <- paste0(1:length(feed_options), ". ", feed_options)

# Prompt user with options
cat(formatted_options, sep = "\n")
feed_choice <- as.integer(readline("Feed type: "))

# Handle invalid input
if (feed_choice < 1 || feed_choice > 6) {
  cat("Invalid choice.")
} else {
  selected_feed <- feed_options[feed_choice]
  print(subset(chicks, feed == selected_feed))
}
