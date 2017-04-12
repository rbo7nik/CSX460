f <- function(x) {
  
  return(sapply(1:length(x), function(i) {prod(x[-i])}))
}

f <- function(x) {
  prod(x) / x
}

x <- c(1,5,2,8)
f(x)

f <- function(x) {
  
  retVal <- x
  
  multiplesOf3 <- (x%%3 == 0)
  retVal[multiplesOf3] <- "Fizz"
  
  multiplesOf5 <- (x%%5 == 0)
  retVal[multiplesOf5] <- "Buzz"
  
  multiplesOf3and5 <- (x%%3 == 0 & x%%5 == 0)
  retVal[multiplesOf3and5] <- "FizzBuzz"
  
  return(retVal)
}

x <- 1:20
f(x)

x <- 1:20

f <- function(x) {
  # The trick here is to use the conditional for being a multiple of 15
  # then 3 and 5, using modulo to see if the remaineder is a 0 (ie multiple of ..) 
  for (i in x) {
    if (i %% 3 == 0 & i %% 5 == 0) { x[i] = "FizzBuzz" }
    else if (i %% 3 == 0) { x[i] = "Fizz" }
    else if (i %% 5 == 0) { x[i] = "Buzz" }
  } 
  x
}

f(x)