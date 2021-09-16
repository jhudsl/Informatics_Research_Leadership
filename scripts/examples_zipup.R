# Zip up files for example repo files in Leanpub
# C. Savonen 

root_dir <- rprojroot::find_root(rprojroot::has_file("_bookdown.yml"))

rmd_files <- leanbuild::get_bookdown_spec(root_dir)$rmd_files

needed_files <-
  c(rmd_files, 
    "_bookdown.yml",
    "_output.yml",
    "docs",
    "resources",
    "assets",
    "quizzes")

writeLines(needed_files, file.path(root_dir, "resources", "needed_leanbuild_files.txt"))

zip("example-repo.zip", files = needed_files)