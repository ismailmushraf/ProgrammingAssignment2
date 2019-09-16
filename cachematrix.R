## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL  #s is the variable to store the solved matrix
  set <- function(y) { # the function to set the matrix
    x <<- y  
    s <<- NULL
  }
  get <- function() x # it return the matrix
  setsolve <- function(solve) s <<- solve # it used to set the solved matrix to variable s
  getsolve <- function() s # used to access the solved matrix
  list(set=set, get=get, setsolve=setsolve, getsolve=getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  s <- x$getsolve() #getting the solved matrix if there is already calculated(cache value)
  if(!is.null(s)){ #checking there is a solved matrix or not
    print("getting cached data")
    return(s)
  }
  data <- x$get() #assigning the matrix to data variable
  s <- solve(data, ...) #assigning the solved matrix of data matrix to variable s
  x$setsolve(s) # setting the solved matrix to makecacheMatrix object
  s #return solved matrix value
}
