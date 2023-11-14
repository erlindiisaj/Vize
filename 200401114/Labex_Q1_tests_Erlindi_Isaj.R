rm(list = ls()) 
library(testthat)


# if (file.exists("MapsThatChangedOurWorld_StoryMap_Data.csv")) {
#   file.remove("MapsThatChangedOurWorld_StoryMap_Data.csv")
#   cat("File deleted")
# } else {
#   cat("No file found")
# }


test_that("MapsThatChangedOurWorld_StoryMap_Data.csv adlı dosya aktif dizinde mevcuttur", {
  expect_identical(file.exists("MapsThatChangedOurWorld_StoryMap_Data.csv"), T)
})
