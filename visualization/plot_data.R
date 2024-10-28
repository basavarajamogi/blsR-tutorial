library(blsR)
library(ggplot2)

# Fetch and plot data
data <- get_series("LNS14000000", start_year = 2015)
ggplot(data, aes(x = date, y = value)) +
  geom_line() +
  labs(title = "Unemployment Rate Over Time")
