rm(list = ls())

# if (file.exists("MapsThatChangedOurWorld_StoryMap_Data.csv")) {
#   file.remove("MapsThatChangedOurWorld_StoryMap_Data.csv")
#   cat("File deleted")
# } else {
#   cat("No file found")
# }

source("Labex_Q1_Erlindi_Isaj.R")

test_that("MapsThatChangedOurWorld_StoryMap_Data.csv adlı dosya aktif dizinde mevcuttur", {
  expect_identical(file.exists("MapsThatChangedOurWorld_StoryMap_Data.csv"), T)
})


test_that("Test : maps adlı değiken Global Workspace’de mevcuttur.", {
  expect_identical(exists("maps"), T)
})

test_that("maps nesnesi bir data.frame’dir.", {
  expect_identical(class(maps) == "data.frame", T)
})


