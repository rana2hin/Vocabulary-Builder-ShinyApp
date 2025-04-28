# Install packages if needed
# install.packages("readxl")
# install.packages("dplyr")

library(readxl)
library(dplyr)

# Define the path to your Excel file
file_path <- "vocab/word_list.xls"

# Get the names of all sheets in the file
sheet_names <- excel_sheets(file_path)

# Read each sheet and store them in a list of dataframes
list_of_dfs <- lapply(sheet_names, function(sheet) {
  read_excel(file_path, sheet = sheet)
})

# Combine all dataframes into one by appending rows
word_data <- bind_rows(list_of_dfs)

word_data <- word_data %>%
  mutate(word = paste0(toupper(substring(word, 1, 1)), substring(word, 2)))

# View the combined dataframe
print(word_data)

saveRDS(word_data, file="vocab/word_data.rds")
