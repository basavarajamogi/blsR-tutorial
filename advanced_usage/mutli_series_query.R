library(blsR)
# Retrieve multiple series (e.g., Unemployment rates by gender)
data <- get_n_series(c("LNS14000001", "LNS14000002"), start_year = 2010, end_year = 2020)
# Tidy the data
tidy_data <- tidy_periods(data)
print(tidy_data)
