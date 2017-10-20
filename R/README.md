# R
### Setting up packages
To bundle your code, it is very handy to put it into a package, since it is quite easy, once you start. The following guide will help you to set up your first package in R.

In addition, I recommend the following sources that helped me get started for further reading:

* [Writing an R package from scratch](https://hilaryparker.com/2014/04/29/writing-an-r-package-from-scratch/)



#### Creation
The easiest way to set up an R package is to use the library ***devtools***.
~~~R
install.packages("devtools")
library(devtools)
~~~

When the library is present, use `devtools::create("Package-name")` to setup the basic structure with some initial setup:

~~~
DESCRIPTION
NAMESPACE
R/
man/
~~~

#### Documentation
The package ***roxygen2*** is very helpful for documenting functions. The syntax is similar to Javadoc comments and it can be used to control which of the functions are to be exported or which are only used internally.

~~~R
#' Function
#' Basic description
#' @param parameter Describe the parameter
#' @export
#' @return What does the function return
simple_function = function(parameter){
  #This function will be exported via @export
  return(parameter)
}
~~~

When doumentation is present, `roxygen2::document()` can be called to create the doc files in `man/` and to define the statements in `NAMESPACE`.

#### Including Data
Sometimes, it might be useful to include data and ship it within the package. There are some differences where to put the data, depending on its purpose (testing, content, etc.).

This guide by Hadley Wockham gives a good overview on how to include data for most purposes:

* [R packages - external data](http://r-pkgs.had.co.nz/data.html)

### Testing
#### testthat
One very common package to write test in R is ***testthat***. When using it in a library, one can use devtools::use_testthat() to setup the necessary dir structure, particularly this one:
~~~
...
tests/testthat
tests/testthat.R
~~~

A sample example for a standard unit test can be found in the [test template](./template_test.R).

To run the test, simply execute `devtools::test()` or simply do the `R CMD check` command on the whole package.

More information can be found here:

* [Testing - R packages](r-pkgs.had.co.nz/tests.html)

### Cross language usage
#### Java
For Java integration, `rJava` can be used to execute Java code given a .jar file.

Further information:
* [rJava: Running Java from R, and Building R Packages Wrapping a .jar](https://datawarrior.wordpress.com/2016/09/10/rjava-running-java-from-r-and-building-r-packages-wrapping-a-jar/)
