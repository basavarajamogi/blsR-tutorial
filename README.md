# blsR Tutorial
This repository is a step-by-step guide for students on how to use the `blsR` package in R. The package enables easy access to data from the U.S. Bureau of Labor Statistics (BLS).

## Table of Contents
- [Requirements](#requirements)
- [Installation](#installation)
- [Setting Up Your BLS API Key](#setting-up-your-bls-api-key)
- [Basic Usage](#basic-usage)
- [Advanced Usage](#advanced-usage)
- [Visualization](#visualization)


## Requirements
- R (version 3.4 or higher)
- API key from the BLS (for expanded data access)

## Installation
You can install `blsR` from CRAN:
```R
install.packages("blsR")

### 2. Obtain an API Key from the Bureau of Labor Statistics (BLS)
   - **Instructions in README**: Provide a brief guide on how to register for a BLS API key.
   - **Environment Setup**: Show students how to set the API key in their R environment (in `.Renviron` for long-term use).

#### Example Instructions for API Key Setup

## Setting Up Your BLS API Key
1. Register at [BLS API](https://data.bls.gov/registrationEngine/) for a free API key.
2. In R, set up the API key by editing the `.Renviron` file:
   ```R
   BLS_API_KEY=your_key_here

### 3. Basic Usage: Fetching BLS Data with `blsR`
   - **Create a Folder**: In the repo, add a folder (e.g., `basic_usage`) and include an R script like `basic_query.R`.
   - **Script Contents**: Write a script showing a basic query to retrieve a time series dataset and print the output.

#### Example Script: basic_usage/basic_query.R
```R
library(blsR)

# Check if API key is set
if (!bls_has_key()) {
  stop("Please set the BLS_API_KEY in your .Renviron file.")
}

# Retrieve a series (e.g., Unemployment Rate)
data <- get_series("LNS14000000")
print(data)
