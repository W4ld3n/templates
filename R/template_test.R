#Using the testthat library for R Unit testing
library("testthat")

#For using it in a package, use devtools::use_testthat()
#That will initialize the tests/testhat dir and create
#a testthat.R file in tests that executes all the tests
#on R CMD check

#Message when executing R CMD check or devtools::test()
context("Very importatnt test")

#First Test-Case
test_that("This should better be working!",{
  x = c(1,2,3)
  expect_that(length(x),equals(3))
})
