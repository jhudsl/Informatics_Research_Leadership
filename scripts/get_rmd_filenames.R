# Retrieve Rmd names from _bookdown.yml to be given to github actions for 
# copying over files to Leanpub repo
# C. Savonen 2021

# Read bookdown.yml
yml <- yaml::yaml.load_file("_bookdown.yml")

# Retrieve rmd files
rmd_list <- yml$rmd_files

if(!dir.exists("resources")){
  dir.create("resources")
}

# Write the file
writeLines(rmd_list, file.path("resources", "rmd_list.txt"))