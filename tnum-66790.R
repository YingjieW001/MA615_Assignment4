# install.packages("devtools")
# library(devtools)
# devtools::install_github("Truenumbers/tnum/tnum")

library(tnum)
library(gutenbergr)
library(tidyverse)

tnum.authorize("mssp1.bu.edu")

getwd()
tnum.setSpace("test2")

book_66790 <- gutenberg_download(gutenberg_id = 66790)

source("Book2TN-v3.R")
tnBooksFromLines(book_66790$text, "anton/hw_russian")

tnum.getDBPathList(taxonomy = "subject", levels = 1)
tnum.getDBPathList(taxonomy = "subject", levels = 2)
tnum.getDBPathList(taxonomy = "subject", levels = 3)
