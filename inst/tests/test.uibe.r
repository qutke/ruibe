library(testthat)

test_that("qtDate",{
  expect_that(as.qtDate('2015-10-01'),equals(as.character(1443657600000)))
  expect_that(as.qtDate('2015-10-10'),equals(as.character(1444435200000)))
})


test_that("getData",{  
  
})

test_that("postData",{

})
