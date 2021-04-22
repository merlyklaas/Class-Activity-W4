library(tidyverse)
library(fs)
files <- dir_ls(here::here("data", "pfiles_sim"), 
                glob = "*.csv")
d <- files %>%
  map_df(read_csv, .id = "file")