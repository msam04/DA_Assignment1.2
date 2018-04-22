library("readxl")
my_path <- "C:\\Users\\Monica\\Test"
my_xl_files <- list.files(path = my_path, pattern = ".xlsx$", recursive = FALSE, include.dirs = FALSE)
df1 <- readxl::read_excel(my_xl_files[1])
for (i in 2:length(my_xl_files)) {
  df1 <- rbind(df1, readxl::read_excel(my_xl_files[i]))
}