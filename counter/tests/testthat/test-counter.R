# Test #1 -> Groups without NA
answer_1 <- datateachr::vancouver_trees %>%
  dplyr::group_by(species_name ) %>%
  dplyr::summarise(n = n())

test_that("Test that counter works with group with no NA", {
  expect_equal(counter(datateachr::vancouver_trees, species_name), answer_1)
})


# Test #2 -> Groups with NA
answer_2 <- datateachr::vancouver_trees %>%
  dplyr::group_by(longitude ) %>%
  dplyr::summarise(n = n())

test_that("Test that counter works with group with  NA", {
  expect_equal(counter(datateachr::vancouver_trees, longitude), answer_2)
})


# Test #3 -> Groups of different type (date format)
answer_3 <- datateachr::vancouver_trees %>%
  dplyr::group_by(date_planted ) %>%
  dplyr::summarise(n = n())

test_that("Test that counter works with group with  NA", {
  expect_equal(counter(datateachr::vancouver_trees, date_planted), answer_3)
})
