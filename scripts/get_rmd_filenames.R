# Retrieve Rmd names from _bookdown.yml to be given to github actions for 
# copying over files to Leanpub repo
# C. Savonen 2021

# Read bookdown.yml
yml <- readLines("_bookdown.yml") 

# Only keep lines with Rmd filename
yml <- grep("\\.Rmd", yml, value = TRUE, ignore.case = TRUE)

# Take out the nonsense
yml <- gsub(",|\t| |\\[|\\]|:|rmd_files|\"", "", yml)

if(!dir.exists("resources")){
  dir.create("resources")
}

# Write the file
writeLines(yml, file.path("resources", "rmd_list.txt"))