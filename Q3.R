my_path <- "C:\\Users\\Monica\\Test"
my_csv_files <- list.files(path = my_path, pattern = ".csv$", recursive = FALSE, include.dirs = FALSE)
df2 <- read.csv(my_csv_files[1])
for (i in 2:length(my_csv_files)) {
  df2 <- rbind(df2, read.csv(my_csv_files[i]))
}